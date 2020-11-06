cask "electron-cash" do
  version "4.2.0"
  sha256 "0d229e60c803536aab7510d14a66a8aaf8bcad936d637ee220329443d75ae76f"

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast "https://github.com/Electron-Cash/Electron-Cash/releases.atom"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://www.electroncash.org/"

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"
end
