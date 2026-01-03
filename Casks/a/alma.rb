cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.174"
  sha256 arm:   "070243c022919bb30acc3e97c449aa2d5ca6747b3daa9e5c069478e9720de19b",
         intel: "d28cdb68699df64c74cea70be3c13ebb9c776d9437bde66c2e9b61d9e18c2561"

  url "https://updates.alma.now/alma-#{version}-mac-#{arch}.dmg"
  name "Alma"
  desc "AI chat application"
  homepage "https://alma.now/"

  livecheck do
    url "https://updates.alma.now/latest-mac.yml"
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Alma.app"

  uninstall quit: "com.yetone.alma"

  zap trash: [
    "~/.config/alma",
    "~/Library/Application Support/alma",
    "~/Library/Preferences/com.yetone.alma.plist",
  ]
end
