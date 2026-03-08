cask "mos" do
  version "4.0.2,20260308.2"
  sha256 "d4304544846347d15c9790ed1debb09f7a99810fa3591ba3605ce33ea6b7fdd6"

  url "https://github.com/Caldis/Mos/releases/download/#{version.csv.first}/Mos.Versions.#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}.zip",
      verified: "github.com/Caldis/Mos/"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  livecheck do
    url "https://mos.caldis.me/appcast.xml"
    strategy :sparkle
  end

  conflicts_with cask: "mos@beta"

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
