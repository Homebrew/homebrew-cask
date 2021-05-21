cask "decrediton" do
  version "1.6.3"
  sha256 "bca8e9fac99bded3cdc71bd1db1ac49c7c4a242750777189a48bd467baefbf97"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  name "Decrediton"
  desc "Wallet GUI for decred autonomous digital currency"
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"
end
