cask "snowflake-snowsql" do
  version "1.2.21"
  sha256 "ad11cf3b32a99ba6281536e375a71ba8c952371601a071481429810f0d266fb0"

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
