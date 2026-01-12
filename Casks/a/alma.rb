cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.208"
  sha256 arm:   "68c34d426feb6bb875fc741ddccbf40479502cff693d6a6883ed5649204b5a55",
         intel: "9381154ed6c3ca34d67ffb0a8c667b3330c59690ac04c03af35ae4b38cb6be6d"

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
