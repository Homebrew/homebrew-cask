cask "snowflake-snowsql" do
  version "1.2.9"
  sha256 "a4175be2c7954300dd74abacba0bc9c49df619da3c16ce1d86b57e4bba4fd26f"

  # sfc-repo.snowflakecomputing.com/ was verified as official when first introduced to the cask
  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg"
  name "SnowSQL"
  homepage "https://snowflake.com/"

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"
end
