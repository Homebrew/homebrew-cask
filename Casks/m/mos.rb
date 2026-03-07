cask "mos" do
  version "4.0.1,20260308.1"
  sha256 "cd841ae5fe0690c29a5cee9300d1b9dfe7d890c3e6adef345d8ca1aba7588527"

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
