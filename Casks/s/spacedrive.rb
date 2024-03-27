cask "spacedrive" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.8"
  sha256 arm:   "0b2ea7144af490143cc872ce0403d23d87e1d33463edb0bf0f8aa64193da0711",
         intel: "4d4407d05d9fb9d007f33a1cc135edaf7b188de3265df0b4a5dcb3008e4bbf71"

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
