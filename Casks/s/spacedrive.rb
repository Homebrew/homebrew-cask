cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.3"
  sha256 arm:   "9a1a4cea76a30ea5c7153625d029dff727bc8c2a7ebff834b625b34197029672",
         intel: "fdbbba3c3e57e39ab58412b990eefe4adffbd37bad1ce0aaa6e00acab9469691"

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
