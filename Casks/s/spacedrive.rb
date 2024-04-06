cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.11"
  sha256 arm:   "f6e07138558c99256cdea7ec2e3660e5f2fad3802fbf495b0526dedfc75e6ff6",
         intel: "2b7692633d60f0b9a9d59190caeb8f2c9fe4506be48735d672618145bbccaa28"

  url "https://github.com/spacedriveapp/spacedrive/releases/download/#{version}/Spacedrive-darwin-#{arch}.dmg"
  name "Spacedrive"
  desc "Open source cross-platform file explorer"
  homepage "https://github.com/spacedriveapp/spacedrive"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Spacedrive.app"

  zap trash: [
    "~/Library/Application Support/spacedrive",
    "~/Library/Caches/com.spacedrive.desktop",
    "~/Library/Preferences/com.spacedrive.desktop.plist",
    "~/Library/Saved Application State/com.spacedrive.desktop.savedState",
    "~/Library/WebKit/com.spacedrive.desktop",
  ]
end
