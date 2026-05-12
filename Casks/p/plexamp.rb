cask "plexamp" do
  arch arm: "arm64", intel: "x64"

  version "4.13.2"
  sha256 arm:   "96f0b8537797460153d7cebf8944ddcbde4161a845c34fc814ee647b986bab7c",
         intel: "7aff81136c661a8425e0c438662c4c390b16277ed381b8227c474e7983ea57ab"

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
  depends_on macos: :monterey

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
