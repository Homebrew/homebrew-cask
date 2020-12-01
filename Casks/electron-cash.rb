cask "electron-cash" do
  version "4.2.3"
  sha256 "722b97fc974c2d02817b39388032e4e9040123bb10d179a2d3a37e52601de1f0"

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast "https://github.com/Electron-Cash/Electron-Cash/releases.atom"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://www.electroncash.org/"

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"
end
