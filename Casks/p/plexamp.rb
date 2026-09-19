cask "plexamp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.50.16"
  sha256 arm:   "defd5160890d70e485a6f8699bf0014d7e09fd8c912469ad156e63cb89595617",
         intel: "5380f5b6dd4eb018bb4d9278671365c602bc9130d50fbc98868f27da4c18be15"

  url "https://plexamp.plex.tv/desktop/Plexamp-#{version}-#{arch}.dmg"
  name "Plexamp"
  desc "Music player focusing on visuals"
  homepage "https://plexamp.com/"

  livecheck do
    url "https://plexamp.plex.tv/desktop/tauri-update.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

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
