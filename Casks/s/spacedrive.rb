cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.12"
  sha256 arm:   "9f65186a04a40faf00e4ac343bcaa6c55fa83200dde0aff8b69490080f3019f2",
         intel: "8df0b5a223e2cfc2a370c6a9e31756d9d0652e095ac0e35d3ce806fdf6889ea5"

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
