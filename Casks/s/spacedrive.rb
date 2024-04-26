cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.13"
  sha256 arm:   "3e1f7e26f7b5a8fd4a05b291375236972947472fd2591240c7b9ce17d97703f1",
         intel: "f851f126b7bea2e3b12af8431beb83283a7b652c7c35647169ce26e3216a82b1"

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
