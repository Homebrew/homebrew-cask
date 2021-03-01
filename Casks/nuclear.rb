cask "nuclear" do
  version "0.6.9"
  sha256 "7393644f0c7ccef4964824883fe13cfb01e78cbab80517054ae973eaad6076d3"

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
