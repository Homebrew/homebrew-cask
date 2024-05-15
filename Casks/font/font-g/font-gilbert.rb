cask "font-gilbert" do
  version "1.005,alpha"
  sha256 "d3ac3075efe00bf4302264b2e626f548e3549740d359a43991605b2a180d8cbe"

  url "https://github.com/Fontself/TypeWithPride/releases/download/#{version.csv.first}/Gilbert_#{version.csv.first}_#{version.csv.second}.zip",
      verified: "github.com/Fontself/TypeWithPride/"
  name "Gilbert"
  homepage "https://typewithpride.com/"

  livecheck do
    url "https://github.com/Fontself/TypeWithPride/releases/"
    strategy :page_match do |page|
      page.scan(/href=.*?Gilbert[._-]v?(\d+(?:\.\d+)+)[._-](.*)\.zip/i)
          .map { |matches| "#{matches[0]},#{matches[1]}" }
    end
  end

  font "Gilbert-Bold Preview#{version.before_comma.minor.tr("00", "")}.otf"
  font "Gilbert-Color Bold Preview#{version.before_comma.minor.tr("00", "")}.otf"

  # No zap stanza required
end
