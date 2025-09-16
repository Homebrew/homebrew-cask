cask "music-presence" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.4"
  sha256 arm:   "14c69877eedcc0af8ef876e307dbc374d7634d515f39874454031533b0bedca7",
         intel: "9076ddbd98f1c5a904c4e43e5c9fc9cf862e33c7caa2818b631af259f3d80d59"

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
