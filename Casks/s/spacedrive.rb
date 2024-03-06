cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.5"
  sha256 arm:   "7ff8730a09e24b862c20d8b0320c4bec5a80fc6f0f8ad5c7aad17f0de0e3d371",
         intel: "ba13f5760d864a3acd6a64bbf8371f910f6b66a02423e8786b3e98ecd23e6f81"

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
