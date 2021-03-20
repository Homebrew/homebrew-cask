cask "electron-cash" do
  version "4.2.4"
  sha256 "ddf5b127eefab76eb733659eefad730728d89c867eead8b4c12b35aeee2bff16"

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  name "Electron Cash"
  desc "Thin client for Bitcoin Cash"
  homepage "https://www.electroncash.org/"

  livecheck do
    url "https://github.com/Electron-Cash/Electron-Cash"
    strategy :github_latest
  end

  app "Electron-Cash.app"

  zap trash: "~/.electron-cash"
end
