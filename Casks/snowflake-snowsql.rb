cask "snowflake-snowsql" do
  version "1.2.28"
  sha256 "24644650811c720847bc6f8e04fc5dea080265a893dc0dc32f2ab044dbf5f206"

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
