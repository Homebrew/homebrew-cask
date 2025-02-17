cask "snowflake-snowsql" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.3"
  sha256 arm:   "8c2dcff194631a84c20dd800a0faf9da964c4ed90797834946e2873e06a45867",
         intel: "0d85b4fa59dd4213b8b04524246b8c0e88313445383b05f8ff3491d48bd37eb0"

  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.major_minor}/darwin_#{arch}/snowsql-#{version}-darwin_#{arch}.pkg",
      verified: "sfc-repo.snowflakecomputing.com/"
  name "SnowSQL"
  desc "Command-line client for connecting to Snowflake"
  homepage "https://snowflake.com/"

  livecheck do
    url "https://www.snowflake.com/content/snowflake-site/global/en/developers/downloads/snowsql.model.json"
    regex(/snowsql[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.pkg/i)
  end

  pkg "snowsql-#{version}-darwin_#{arch}.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"

  zap trash: "~/.snowsql"
end
