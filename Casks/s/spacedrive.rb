cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.10"
  sha256 arm:   "fd4744ea59637717f77cb85a0ba09539e81b99225367dee3f6dd8c4d7a7f0de1",
         intel: "b72fc6d912a7c8f9754294e9dbae60df4ad76b23b0ab48a76c2f7aeb17e6f979"

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
