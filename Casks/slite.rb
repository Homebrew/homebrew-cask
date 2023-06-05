cask "slite" do
  arch arm: "arm64", intel: "x64"

  version "1.2.17"
  sha256 arm:   "4ee819ffe13fd0bdbf4a7da4eee8a8fa11710738f4acc3fc03fb284ae8565b8c",
         intel: "ba6fba6ab16047f07c6f4a1b5c73609e9210f6757bbb12191e24827d5b985c8a"

  url "https://download.todesktop.com/20062929x31pwfi/Slite%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/20062929x31pwfi/"
  name "Slite"
  desc "Team communication and collaboration software"
  homepage "https://slite.com/"

  livecheck do
    url "https://download.todesktop.com/20062929x31pwfi/latest-mac.yml"
    strategy :electron_builder
  end

  app "Slite.app"

  zap trash: [
    "~/Library/Application Support/Slite",
    "~/Library/Caches/com.slite.desktop",
    "~/Library/Caches/com.slite.desktop.ShipIt",
    "~/Library/Preferences/com.slite.desktop.helper.plist",
    "~/Library/Preferences/com.slite.desktop.plist",
    "~/Library/Saved Application State/com.slite.desktop.savedState",
  ]
end
