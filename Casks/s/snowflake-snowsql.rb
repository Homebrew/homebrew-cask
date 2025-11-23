cask "snowflake-snowsql" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.5"
  sha256 arm:   "4869789576acdcc05c0ecdff46e7c90d19c6fc980688debfcc90e4901ba6296e",
         intel: "680d6bfbf17448115197b9ca35e9d4fe9d4a07853873a762385c9798018c0cd5"

  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.csv.second || version.csv.first.major_minor}/darwin_#{arch}/snowsql-#{version.csv.first}-darwin_#{arch}.pkg",
      verified: "sfc-repo.snowflakecomputing.com/"
  name "SnowSQL"
  desc "Command-line client for connecting to Snowflake"
  homepage "https://snowflake.com/"

  livecheck do
    url "https://www.snowflake.com/content/snowflake-site/global/en/developers/downloads/snowsql.model.json"
    regex(%r{/(\d+(?:\.\d+)+)/darwin[._-]#{arch}/snowsql[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        # Only append the path version if it isn't the version major/minor
        (match[0] == match[1][/^\d+\.\d+/]) ? match[1] : "#{match[1]},#{match[0]}"
      end
    end
  end

  pkg "snowsql-#{version.csv.first}-darwin_#{arch}.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"

  zap trash: "~/.snowsql"
end
