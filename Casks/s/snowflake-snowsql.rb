cask "snowflake-snowsql" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.32"
  sha256 arm:   "6e1a787004b39837270c83a2374d338b1d2f913c8f002bb059b4b8e30b58ec31",
         intel: "aa5079140620d8f003cba7ad92916f549cb6a69636b2e6a247dd3f3878e016a1"

  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_#{arch}/snowsql-#{version}-darwin_#{arch}.pkg",
      verified: "sfc-repo.snowflakecomputing.com/"
  name "SnowSQL"
  desc "Command-line client for connecting to Snowflake"
  homepage "https://snowflake.com/"

  livecheck do
    url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_#{arch}/index.html"
    regex(%r{">snowsql-(\d+(?:\.\d+)+)-darwin_#{arch}.pkg</a>})
  end

  pkg "snowsql-#{version}-darwin_#{arch}.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"

  zap trash: "~/.snowsql"
end
