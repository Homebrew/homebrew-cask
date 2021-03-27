cask "snowflake-snowsql" do
  version "1.2.10"
  sha256 "7e29e84dc2c9cef94a4d2877f3074ee74bc41442584dd8efd6970483f87288db"

  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg",
      verified: "sfc-repo.snowflakecomputing.com/"
  name "SnowSQL"
  homepage "https://snowflake.com/"

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"
end
