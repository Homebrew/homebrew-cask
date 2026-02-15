cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.461"
  sha256 arm:   "44fa7096746c68d87bceb8c283e22408c794860d312fd7ea0cf48f62581474cd",
         intel: "e82c460b71d401685bfe5db0909101a0b3790245a2ae53342597e3dd2689fd7a"

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
