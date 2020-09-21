cask "netnewswire" do
  version "5.1"
  sha256 "f8e442d91afbc5f99e4c20076516693a850974dae835db5d11f8df4aab6ebdf6"

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
