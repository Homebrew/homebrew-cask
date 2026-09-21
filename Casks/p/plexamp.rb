cask "plexamp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.50.19"
  sha256 arm:   "e9e0855e8048b0f92ebf90251de3ff0ff2fd1f92e2c9619a4bd1bc7bcfeabdde",
         intel: "e0dbec26276d5d3f752284d51c54b0cc6442f1d22690f4c34a7bc82224fa0d0a"

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
