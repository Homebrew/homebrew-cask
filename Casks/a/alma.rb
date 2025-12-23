cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.130"
  sha256 arm:   "abfff9cc7b0389b29462a0618b3d1ceb07710d17c076758eb1f1cd0be1cac35b",
         intel: "ee30d55fece774087e2b1aa83d071966716d1f95426ff9089ef68bd6629ecd38"

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
