cask "decrediton" do
  version "1.6.0"
  sha256 "6f47df4942ea5e17a4f97fb25b9f84eb6723d706c61ea3992217614ffc46fc89"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast "https://github.com/decred/decred-binaries/releases.atom"
  name "Decrediton"
  homepage "https://github.com/decred/decrediton"

  app "decrediton.app"
end
