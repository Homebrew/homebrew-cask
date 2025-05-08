cask "plexamp" do
  arch arm: "arm64", intel: "x64"

  version "4.12.3"
  sha256 arm:   "2498531b220f819b47e681b0e563b03c86b0df1a26e30df14e8ace72034a8b72",
         intel: "44e3fbd5887f68e3e1b1e791fa57f9c2b1f94accc536edcbeb1b172ee2dc528b"

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
  depends_on macos: ">= :catalina"

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
