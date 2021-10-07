cask "snowflake-snowsql" do
  version "1.2.18"
  sha256 "796f944a367b7d70515dc8a81f43a7a73609b17782a21580e7cb7d8e9e04c4cd"

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
