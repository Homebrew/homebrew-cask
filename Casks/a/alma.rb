cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.145"
  sha256 arm:   "949c35f8ade16733fa731385c7662aa0a15bbb193c1c872742e999fb488ad202",
         intel: "ccbfd11fdfb1779a8354e14d1ff586d1a079970ef0ee160ecfa821a95e0f7277"

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
