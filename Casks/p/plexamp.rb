cask "plexamp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.50.11"
  sha256 arm:   "58d43cc20bd16927356c1bc44546b216f70ed589d2fac572298694864a2bd7c5",
         intel: "01d6a3b2f6ef438ad07fe386b61ee10e6ae2499c4a4147090b7567c7dd822146"

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
