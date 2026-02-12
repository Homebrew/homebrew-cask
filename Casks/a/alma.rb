cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.366"
  sha256 arm:   "dd9b34c24f25deca5d02b7a529c86a0447870f00ac0d5fd0c059ff64b5510a8e",
         intel: "307364bac13fbc9f9442e8afe652db9a91c870c291f433da2f9795a67732e816"

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
