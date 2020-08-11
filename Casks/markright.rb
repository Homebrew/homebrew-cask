cask "markright" do
  version "0.1.11"
  sha256 "2d293121534a468e5f166e18eaa28f8db7e39a617b092e06c0d8b339191d9f47"

  url "https://github.com/dvcrn/markright/releases/download/#{version}/MarkRight_Mac.dmg"
  appcast "https://github.com/dvcrn/markright/releases.atom"
  name "MarkRight"
  desc "Electron-powered markdown editor with live preview"
  homepage "https://github.com/dvcrn/markright"

  app "MarkRight.app"
end
