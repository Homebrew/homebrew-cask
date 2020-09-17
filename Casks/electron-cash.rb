cask "electron-cash" do
  version "4.1.0"
  sha256 "65872450268e64b18340042943dc580b47325e1a21d51817b982599a7439e2fb"

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast "https://github.com/Electron-Cash/Electron-Cash/releases.atom"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://www.electroncash.org/"

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"
end
