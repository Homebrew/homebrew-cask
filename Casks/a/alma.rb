cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.259"
  sha256 arm:   "fada4a3518ea8285d4b9245d72e36466095a55b134b503f718d12db63726bd9b",
         intel: "6f2db442cd387ce7980b76eddcfbb61a02195e7446c15d6ff74f98fe97eb39ed"

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
