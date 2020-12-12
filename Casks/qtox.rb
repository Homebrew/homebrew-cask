cask "qtox" do
  version "1.17.3"
  sha256 "63ee6eb013487a86abbaeb23ad61eca7b74c6ceed0e56fa7e7d9bee6522615b4"

  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg",
      verified: "github.com/qTox/qTox/"
  appcast "https://github.com/qTox/qTox/releases.atom"
  name "qTox"
  homepage "https://qtox.github.io/"

  app "qTox.app"
end
