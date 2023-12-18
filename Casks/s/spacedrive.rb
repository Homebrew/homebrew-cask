cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.4"
  sha256 arm:   "80a6e80795b4bd6eacb191d1462bea6d53c4d1dd05094762342b0fd2b28ab4da",
         intel: "283d61c3a683caa0ac5cb60cf16ace4c8d807c5c7bb7ef94595ed26829adca92"

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
