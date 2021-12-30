cask "snowflake-snowsql" do
  version "1.2.20"
  sha256 "6a27957633d89d9558a068d835326fc07665123c76fbf0396250ac9a9ce35e79"

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
