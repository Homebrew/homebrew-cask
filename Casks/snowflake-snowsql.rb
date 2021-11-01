cask "snowflake-snowsql" do
  version "1.2.19"
  sha256 "57127f0082923593e89967e2a3c72cd698d8f62eb4d7c434f3e8abb66402c722"

  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg",
      verified: "sfc-repo.snowflakecomputing.com/"
  name "SnowSQL"
  desc "Command-line client for connecting to Snowflake"
  homepage "https://snowflake.com/"

  livecheck do
    url "https://docs.snowflake.com/en/release-notes/client-change-log-snowsql.html"
    regex(/>\s*SnowSQL\s*v?(\d+(?:\.\d+)+)\s*</i)
  end

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"
end
