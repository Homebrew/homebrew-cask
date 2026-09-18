cask "plexamp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.50.15"
  sha256 arm:   "39fed9eb897bcfad4faf6a2d22a2be6e2e0f835f9dbc4942ef6811fffaae4d3c",
         intel: "79c55b3c0c1bcf0fc0403208e1d6222dbb993de4d241274ef3e880b16aa6ef56"

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
