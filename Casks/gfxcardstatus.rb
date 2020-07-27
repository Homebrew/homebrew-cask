cask "gfxcardstatus" do
  version "2.3"
  sha256 "092b3e2fad44681ba396cf498707c8b6c228fd55310770a8323ebb9344b4d9a1"

  url "https://gfx.io/downloads/gfxCardStatus-#{version}.zip"
  appcast "https://gfx.io/appcast.xml"
  name "gfxCardStatus"
  homepage "https://gfx.io/"

  app "gfxCardStatus.app"

  zap trash: [
    "~/Library/Caches/com.codykrieger.gfxCardStatus",
    "~/Library/Cookies/com.codykrieger.gfxCardStatus.binarycookies",
    "~/Library/Preferences/com.codykrieger.gfxCardStatus-Preferences.plist",
    "~/Library/Preferences/com.codykrieger.gfxCardStatus.plist",
  ]
end
