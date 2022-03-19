cask "markright" do
  version "0.1.11"
  sha256 "2d293121534a468e5f166e18eaa28f8db7e39a617b092e06c0d8b339191d9f47"

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  name "MarkRight"
  desc "Electron-powered markdown editor with live preview"
  homepage "https://github.com/dvcrn/markright"

  app "MarkRight.app"

  zap trash: [
    "~/Library/Application Support/MarkRight",
    "~/Library/Caches/MarkRight",
    "~/Library/Preferences/com.electron.markright.plist",
  ]
end
