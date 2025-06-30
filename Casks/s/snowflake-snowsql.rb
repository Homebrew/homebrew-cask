cask "snowflake-snowsql" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.2"
  sha256 arm:   "2ebf6cc644010886c7c57f287f09ded8cb1e265abfb67df3a733c3b5eebf7fb7",
         intel: "d24871298bd71431d3fdc49323aeee1d5a5b71119016b164e36fbe0cb77f970a"

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
