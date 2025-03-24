cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.3"
  sha256 arm:   "d018fa1a3b312d480b972700df7a5722f22da2a16d6ad8c997667f6708e70b47",
         intel: "1355c219e5817bfa071c4de2cccca44fcc05ac81a134cbe6c4489e32b9d27d9f"

  url "https://github.com/spacedriveapp/spacedrive/releases/download/#{version}/Spacedrive-darwin-#{arch}.dmg"
  name "Spacedrive"
  desc "Open source cross-platform file explorer"
  homepage "https://github.com/spacedriveapp/spacedrive"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Spacedrive.app"

  zap trash: [
    "~/Library/Application Support/spacedrive",
    "~/Library/Caches/com.spacedrive.desktop",
    "~/Library/Preferences/com.spacedrive.desktop.plist",
    "~/Library/Saved Application State/com.spacedrive.desktop.savedState",
    "~/Library/WebKit/com.spacedrive.desktop",
  ]
end
