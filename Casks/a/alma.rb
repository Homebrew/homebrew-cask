cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.273"
  sha256 arm:   "d8bbc66e39489fd20652dfe988bdbb7ba68b11227c0afeea9b869caffb31355c",
         intel: "636991fdd0d00fe2c6f802f1b67d4cda54d36a446bdbdf7a580c0056ac57d573"

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
