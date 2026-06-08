cask "mos" do
  version "4.2.1,20260531.1"
  sha256 "2ea69e96f092e44dada93a55bda1cddab3329c527bbd5f06e00dfb78e953960a"

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
  depends_on :macos

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
