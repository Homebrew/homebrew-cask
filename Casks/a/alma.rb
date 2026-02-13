cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.388"
  sha256 arm:   "6b97f811128cf3b2d130e77b62ba7bbc44ae7233c1263fd97e58a1045c9ed5ca",
         intel: "9a1edfb4e8adf3bec67c00c0cdfd06b2cbb8163858612d14c81d5db809aaf876"

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
