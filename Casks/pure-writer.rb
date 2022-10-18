cask "pure-writer" do
  version "1.6.0,1.6.0"
  sha256 "69ee93d99c4946b4ebeffdea5d3b5b4f77e9df6645ffe019cbb7f1e23a033912"

  url "https://github.com/PureWriter/desktop/releases/download/#{version.csv.second}/PureWriter-#{version.csv.first}-macOS.dmg",
      verified: "github.com/PureWriter/desktop/"
  name "Pure Writer Desktop"
  desc "Desktop version of the Android app"
  homepage "https://writer.drakeet.com/desktop"

  livecheck do
    url "https://github.com/PureWriter/desktop/releases"
    regex(%r{href=.*?([^/]+)/PureWriter[._-]v?(\d+(?:\.\d+)+)-macOS\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.second},#{match.first}" }
    end
  end

  pkg "Pure Writer-#{version.csv.second}.pkg"

  uninstall pkgutil: "com.drakeet.purewriter"

  zap trash: "~/Library/Preferences/com.drakeet.purewriter.plist"
end
