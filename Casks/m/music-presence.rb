cask "music-presence" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.6"
  sha256 arm:   "22f532cd1f5a98c87258746e853baa50500b084dd04d18c79ac0122b27678fc4",
         intel: "7bc0cf74efaf9a98c4dae8e3b26373cd49368d9c459111480b7be7decc3f032d"

  url "https://github.com/ungive/discord-music-presence/releases/download/v#{version}/musicpresence-#{version}-mac-#{arch}.dmg",
      verified: "github.com/ungive/discord-music-presence/"
  name "Music Presence"
  desc "Discord music status that works with any media player"
  homepage "https://musicpresence.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Music Presence.app"

  zap trash: [
    "~/Library/Application Support/Music Presence",
    "~/Library/Preferences/app.musicpresence.desktop.plist",
  ]

  caveats do
    license "https://github.com/ungive/discord-music-presence/blob/v#{version}/LICENSE.md"
  end
end
