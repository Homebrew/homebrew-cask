cask "snowflake-snowsql" do
  version "1.2.24"
  sha256 "28bd238991e00bf476d3fdb28c1e7d97bd6f0e315fa4c1f9dc78fad4f0e3b89c"

  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_x86_64/snowsql-#{version}-darwin_x86_64.pkg",
      verified: "sfc-repo.snowflakecomputing.com/"
  name "SnowSQL"
  desc "Command-line client for connecting to Snowflake"
  homepage "https://snowflake.com/"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_x86_64/index.html"
    regex(%r{">snowsql-(\d+(?:\.\d+)+)-darwin_x86_64.pkg</a>})
  end

  pkg "snowsql-#{version}-darwin_x86_64.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"
end
