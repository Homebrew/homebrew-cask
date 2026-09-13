cask "plexamp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.50.10"
  sha256 arm:   "87ac33732a03f46a6d10f64063e9bfac0e1a710d63c8f137d04a6dea70c5ae6e",
         intel: "8691b3676fce796f8daffb2191b16bd63b6b43bfd5b126c8116bf9b03a45a620"

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
