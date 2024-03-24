cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.6"
  sha256 arm:   "7330070a3d54ca24aa0d59f336ecef2483620ffd2a236e3abb6270dd37ea5cd5",
         intel: "beb5bff073c1807e971e9b29e58d5b5a16243249d1f523c2fbef27a838fa4c1f"

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
