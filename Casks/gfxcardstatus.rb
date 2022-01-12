cask "gfxcardstatus" do
  version "2.5,5482"
  sha256 "70d94cbf5d691c9530e974b5512a106e0bf532ab345fd911199928b8b11a3688"

  url "https://github.com/codykrieger/gfxCardStatus/releases/download/v#{version.csv.first}/gfxCardStatus-#{version.csv.first}.zip",
      verified: "github.com/codykrieger/gfxCardStatus/"
  name "gfxCardStatus"
  homepage "https://gfx.io/"

  livecheck do
    url "https://gfx.io/appcast.xml"
    strategy :sparkle
  end

  app "gfxCardStatus.app"

  zap trash: [
    "~/Library/Caches/com.codykrieger.gfxCardStatus",
    "~/Library/Cookies/com.codykrieger.gfxCardStatus.binarycookies",
    "~/Library/Preferences/com.codykrieger.gfxCardStatus-Preferences.plist",
    "~/Library/Preferences/com.codykrieger.gfxCardStatus.plist",
  ]
end
