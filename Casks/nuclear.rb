cask "nuclear" do
  version "0.6.10"
  sha256 "15019107de3908a9282b7d0bd7ffc963aa782685f51c6a77262dc7949bc813da"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-#{version}.dmg",
      verified: "github.com/nukeop/nuclear/"
  appcast "https://github.com/nukeop/nuclear/releases.atom"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
