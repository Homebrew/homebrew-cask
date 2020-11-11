cask "netnewswire" do
  version "5.1.3"
  sha256 "5f08f9ee986621d146c57f3ab3e98297944af368ce7ff1382a8e3a6c31fab5ea"

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
