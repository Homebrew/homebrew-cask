cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.318"
  sha256 arm:   "a0f93ff84c91ae114cf91328887c4da3154ca12248044b5f01560bde3b0903ed",
         intel: "c04ca8bd793e7192b145ac24b4368332c6dab89d4fd9cf6ba96972e45bfa673a"

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
