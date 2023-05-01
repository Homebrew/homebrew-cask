cask "snowflake-snowsql" do
  version "1.2.26"
  sha256 "51d9db56ec898754dee114db4b8d9f03283c82a0d09f54be5851b63a8ff93a3f"

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

  zap trash: "~/.snowsql"
end
