cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "f3bbb760074287b3f18286bffa8408c569d328ed60c3ea1090f605d8a9a0005b",
         intel: "e7a493d3e90c8c12db3635bf83a94c3877899bc728eb7373fecad745cbedf51b"

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
