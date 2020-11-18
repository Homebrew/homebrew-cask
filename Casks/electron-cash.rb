cask "electron-cash" do
  version "4.2.1"
  sha256 "65876d20f9bb8498f3b006c3990526a24da67db7c1b3717dc82915756ec94fea"

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast "https://github.com/Electron-Cash/Electron-Cash/releases.atom"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://www.electroncash.org/"

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"
end
