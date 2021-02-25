cask "decrediton" do
  version "1.6.1"
  sha256 "fe1485949dcb066332a50ddb164d468a9cfbe10056cc483eb37841f52e77172b"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast "https://github.com/decred/decred-binaries/releases.atom"
  name "Decrediton"
  desc "Cross-platform GUI for decred written in node.js using Electron"
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"
end
