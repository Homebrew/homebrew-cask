cask "music-presence" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.3"
  sha256 arm:   "e8587d35deb07442f0758765211878c236ce812b4e1c8d01fc6a200dc1e031d2",
         intel: "c2daccbde9713c7fcaaf4e13ab457dd72ebe94cf3db81ab7e65a3afd9e3b0d99"

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
