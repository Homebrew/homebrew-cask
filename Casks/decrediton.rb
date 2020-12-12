cask "decrediton" do
  version "1.5.2"
  sha256 "3341b0b09bf100840643daf5b583cd61ee8981b7869a5190cb4c106cacba8b7e"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast "https://github.com/decred/decred-binaries/releases.atom"
  name "Decrediton"
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"
end
