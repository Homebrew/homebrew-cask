cask "music-presence" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.2"
  sha256 arm:   "2e0bb41d795006813403fbe77ab21ca1c4d2340e669a6103a4a1707fa07aa4b1",
         intel: "0844267c664f968d993aaf16b58681e7a23ecd485e2d5f257d91a100bfc854dc"

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
