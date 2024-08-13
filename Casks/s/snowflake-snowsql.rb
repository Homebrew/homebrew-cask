cask "snowflake-snowsql" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.2"
  sha256 arm:   "5ec96d3e159b2f4c30e630fd425244a22b4575e990ea07f7983996b8edfd8aeb",
         intel: "d3e952c370ebfcc77e93161271e212b27bb7dc26e7db7d680542d8056196eae3"

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
