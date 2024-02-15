cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.4"
  sha256 arm:   "ad5466961b2fbc5151af78215f472f7dc24edd695b68d341a3eaf8239e7a6048",
         intel: "7ad4407060b94b41b056b0562027c1e5e7fcdf1729ff7e4ad3f42774a98f5121"

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
