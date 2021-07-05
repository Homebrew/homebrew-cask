cask "nuclear" do
  version "0.6.13"
  sha256 "95cadb309951f1488ce4d14611c17742c779643cc47d76e6d6d1fbae863e0308"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-#{version}.dmg",
      verified: "github.com/nukeop/nuclear/"
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
