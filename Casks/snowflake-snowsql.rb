cask "snowflake-snowsql" do
  version "1.2.14"
  sha256 "afeaee342121451d140117aba37aa131c672095210bda4c72469971b2dd50cdb"

  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg",
      verified: "sfc-repo.snowflakecomputing.com/"
  name "SnowSQL"
  homepage "https://snowflake.com/"

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"
end
