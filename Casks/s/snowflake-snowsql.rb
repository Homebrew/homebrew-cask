cask "snowflake-snowsql" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.1"
  sha256 arm:   "8dce6d4223e5cedc8ac7038a148c4d4efd7747511bb51f658dd8159f06209c89",
         intel: "29237e1de9fa289b6219bf61c900fd4a2e65de63676aea71e45d500fd4be0966"

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
