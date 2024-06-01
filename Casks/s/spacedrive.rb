cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.1"
  sha256 arm:   "f44ee1d37cc9b47f1bea484371b06c078ea2556c25e3cb3e189b8130e984adee",
         intel: "87e07bb5cea35c95053443211ba64d721fa0aed814780cdf6b7ec10e867a33c4"

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
