cask "snowflake-snowsql" do
  version "1.2.30"
  sha256 "72a16bc7fb8cb8b68c162cee503dfe8690c6f374d14c50508038ff3edcfdce81"

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
