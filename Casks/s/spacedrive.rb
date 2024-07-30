cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.1"
  sha256 arm:   "9d69ab04ebe6feffba3b18abb8b825c61153c1a456ef8d243160ec87fc287a74",
         intel: "89a175d82a982d1312971df6aba4ac41b3eb4eb0bde6528b61664b2567a20592"

  url "https://github.com/spacedriveapp/spacedrive/releases/download/#{version}/Spacedrive-darwin-#{arch}.dmg"
  name "Spacedrive"
  desc "Open source cross-platform file explorer"
  homepage "https://github.com/spacedriveapp/spacedrive"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Spacedrive.app"

  zap trash: [
    "~/Library/Application Support/spacedrive",
    "~/Library/Caches/com.spacedrive.desktop",
    "~/Library/Preferences/com.spacedrive.desktop.plist",
    "~/Library/Saved Application State/com.spacedrive.desktop.savedState",
    "~/Library/WebKit/com.spacedrive.desktop",
  ]
end
