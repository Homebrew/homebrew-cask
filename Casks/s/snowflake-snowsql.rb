cask "snowflake-snowsql" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.4"
  sha256 arm:   "8e8e061cd29cdf97f5c4411da48d1aabcbd4a4ac7ad87ada3ce8e6e446df2a06",
         intel: "0dc9e4025f1eadd5ac9bce35a1990db2c28ca59416c6376b982638e4cb652ce6"

  url "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/#{version.csv.second || version.csv.first.major_minor}/darwin_#{arch}/snowsql-#{version.csv.first}-darwin_#{arch}.pkg"
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

  depends_on :macos

  pkg "snowsql-#{version.csv.first}-darwin_#{arch}.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"

  zap trash: "~/.snowsql"
end
