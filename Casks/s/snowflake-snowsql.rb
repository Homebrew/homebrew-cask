cask "snowflake-snowsql" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.1"
  sha256 arm:   "521e87e1b43284720dbab70357fbba32bf32b9a3709516be8dd650980d9fd4bf",
         intel: "c9761bb580b00e6b0c6bc6b0c6004907846488f9ad9c62a7bb9de534728e6f12"

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

  depends_on :macos

  pkg "snowsql-#{version.csv.first}-darwin_#{arch}.pkg"

  uninstall pkgutil: "net.snowflake.snowsql"

  zap trash: "~/.snowsql"
end
