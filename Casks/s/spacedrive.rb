cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.4.2"
  sha256 arm:   "3fd428eb19e12a9a5901a8deddbbcb9851a84e8c9e34608060647ebf714dbe37",
         intel: "80d227eec6edfae3686ecdf0da64f2b95a26f3437ff5121380c367a4c2b01bf7"

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
