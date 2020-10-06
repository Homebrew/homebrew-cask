cask "netnewswire" do
  version "5.1.1"
  sha256 "5cd3e7631011233c1016f234379eca7baa971befd88862816d440c2fe2fc9b48"

  # github.com/brentsimmons/NetNewsWire/ was verified as official when first introduced to the cask
  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip"
  appcast "https://github.com/brentsimmons/NetNewsWire/releases.atom"
  name "NetNewsWire"
  desc "Free and open-source RSS reader"
  homepage "https://ranchero.com/netnewswire/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "NetNewsWire.app"
end
