cask "electron-cash" do
  version "4.2.2"
  sha256 "0c251b63afb03e1b0c2461c09a27647749838260c1b5637b63c13fea7c9b3387"

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast "https://github.com/Electron-Cash/Electron-Cash/releases.atom"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://www.electroncash.org/"

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"
end
