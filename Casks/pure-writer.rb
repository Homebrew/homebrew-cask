cask "pure-writer" do
  version "1.5.3,1.5.2"
  sha256 "1924099569ce3049a22d23cb889a11276de1d175cb6ef301a64d9fc34448ce60"

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

  pkg "Pure Writer-#{version}.pkg"

  uninstall pkgutil: "com.drakeet.purewriter"

  zap trash: "~/Library/Preferences/com.drakeet.purewriter.plist"
end
