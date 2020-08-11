cask "netnewswire" do
  version "5.0.4"
  sha256 "6223a5fecae3307016bb645c49e4988fb5a253460f9a257e47fa5bbe0d89ca3d"

  # github.com/brentsimmons/NetNewsWire/ was verified as official when first introduced to the cask
  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip"
  appcast "https://github.com/brentsimmons/NetNewsWire/releases.atom"
  name "NetNewsWire"
  desc "Free and open-source RSS reader"
  homepage "https://ranchero.com/netnewswire/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "NetNewsWire.app"
end
