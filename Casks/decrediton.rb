cask "decrediton" do
  version "1.6.2"
  sha256 "50ff42fd6b704c9e751f29b6c12007ddfdf291d3b078e9c8f75c695844a9d411"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  name "Decrediton"
  desc "Wallet GUI for decred autonomous digital currency"
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"
end
