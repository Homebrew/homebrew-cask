cask "plexamp" do
  arch arm: "arm64", intel: "x64"

  version "4.11.0"
  sha256 arm:   "78be35e74b486a7df1d9767ed1560e29578a0b087d2f4178e6bc608aa9a091ed",
         intel: "57c2b7eb9259eb8b5799471d81a0d250a07aac7c6a07fda1292a70bc190f78d7"

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
