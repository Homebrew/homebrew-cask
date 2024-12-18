cask "plexamp" do
  arch arm: "arm64", intel: "x64"

  version "4.11.4"
  sha256 arm:   "1a11cd4dc820f2f29ab56d445dc8b920a284b6848b410a1d99f92d3547343643",
         intel: "ffda91b2ecb3a00656013cd4b3a1be9bbab90a264aee249aab5d8c5e41ce3dab"

  url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-#{version}-#{arch}.dmg",
      verified: "plexamp.plex.tv/"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  livecheck do
    url "https://plexamp.plex.tv/plexamp.plex.tv/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Plexamp.app"

  zap trash: [
    "~/Library/Application Support/Caches/plexamp-updater",
    "~/Library/Application Support/Plexamp",
    "~/Library/Caches/Plexamp",
    "~/Library/Caches/tv.plex.plexamp*",
    "~/Library/Logs/Plexamp",
    "~/Library/Preferences/tv.plex.plexamp.plist",
    "~/Library/Saved Application State/tv.plex.plexamp.savedState",
  ]
end
