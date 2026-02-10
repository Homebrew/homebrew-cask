cask "music-presence" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.5"
  sha256 arm:   "18a67a5c81a1caf4b6f80d2cd39ed6e87d5b9be143ad66cc398e969c967104a1",
         intel: "6df38fd103e91408338156743860adf930c3ac0f43a4110df3e789120b32105c"

  url "https://github.com/ungive/discord-music-presence/releases/download/v#{version}/musicpresence-#{version}-mac-#{arch}.dmg",
      verified: "github.com/ungive/discord-music-presence/"
  name "Music Presence"
  desc "Discord music status that works with any media player"
  homepage "https://musicpresence.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Music Presence.app"

  zap trash: [
    "~/Library/Application Support/Music Presence",
    "~/Library/Preferences/app.musicpresence.desktop.plist",
  ]

  caveats do
    license "https://github.com/ungive/discord-music-presence/blob/v#{version}/LICENSE.md"
  end
end
