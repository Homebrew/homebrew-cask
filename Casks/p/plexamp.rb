cask "plexamp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.50.14"
  sha256 arm:   "367e1469fe4ccffdfa3be7ec2b8ce89d831392c8f0c7213ed42e8eb90d51609e",
         intel: "b0526bb0908f7e694ae22c13009f319fd69acbdc5e1bda5eb46d4ce4b7e74b73"

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
