cask "snowflake-snowsql" do
  version "1.2.17"
  sha256 "bb7f9491b1bc2bac3a03d06b00a1ba7c3af2cf2f91d393551848f852926b4df7"

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
