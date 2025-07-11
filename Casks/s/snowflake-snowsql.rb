cask "snowflake-snowsql" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.3"
  sha256 arm:   "b1f6da79a07448bdedcdbfe8937369c63031765148f23e1596cf0c4e31eb8d63",
         intel: "b38eae6543e8be82f26bc1a2ef590bf9c82831e745289b31d28e2ac2276fd36b"

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
