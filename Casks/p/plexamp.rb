cask "plexamp" do
  arch arm: "arm64", intel: "x64"

  version "4.12.0"
  sha256 arm:   "235b837b5f91df1ddcf92345e37d96f3d00b813d32b0f64c9d9db2f7cdd05455",
         intel: "c20bd531f4d697bfcb3f4fc648a57474360d219d5357b934fdb8593870bf6a1a"

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
