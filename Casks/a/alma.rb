cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.283"
  sha256 arm:   "dbc7c8da91d1dc1224e526b985d2e4df2f7a90a1afc9f0b090d8a6b92d072889",
         intel: "25b09e7a6dfeb94cd9d419707a3ad1b7a724e60ce4018372f36bb8487d0a7bd0"

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
