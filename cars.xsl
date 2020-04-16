<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns="http://www.w3.org/1999/xhtml">

<xsl:output doctype-system="about:legacy-compat"
        indent="yes"
        method="xml"
        omit-xml-declaration="no"/>

<xsl:template match="/">
<html> 
<body>
  <h2>Car info</h2>
  <table>
    <tr bgcolor="#93C0EF">
      <th style="text-align:left">Make</th>
      <th style="text-align:left">Model</th>
      <th style="text-align:left">Year</th>
      <th style="text-align:left">KMs</th>
      <th style="text-align:left">Color</th>
      <th style="text-align:left">Price</th>
      <th style="text-align:left">Warranty</th>
    </tr>
    <xsl:for-each select="cars/car">
    <tr bgcolor="#EBF4FF">
      <td><xsl:value-of select="@manufacturer"/></td>
      <td><xsl:value-of select="@model"/></td>
      <td><xsl:value-of select="@year"/></td>
      <td><xsl:value-of select="meter"/></td>
	  <td><xsl:attribute name="bgcolor"><xsl:value-of select="color"/> </xsl:attribute></td>
      <td><xsl:value-of select="price"/></td>
      <td style="text-align: center;"><xsl:choose><xsl:when test="dealersecurity[@buyback='yes']">&#10004;</xsl:when></xsl:choose></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>