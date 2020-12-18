cask "quickwords" do
  version "0.1.2"
  sha256 "c57084796daae3d6b11f4e99c04587d85b4456bcfa6d9ce8f00635c3c5c096a9"

  url "https://github.com/quickwords/quickwords/releases/download/v#{version}/Quickwords-Mac.dmg",
      verified: "github.com/quickwords/quickwords/"
  appcast "https://github.com/quickwords/quickwords/releases.atom"
  name "Quickwords"
  homepage "https://quickwords.co/"

  app "Quickwords.app"
end
