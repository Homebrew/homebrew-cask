cask "netnewswire" do
  version "5.1.2"
  sha256 "bd67df55c08ee255a5d8ccaeb5779b82e55e504d0cadfb15a13b2ceb6bc4cda6"

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
