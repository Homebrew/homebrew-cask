cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.220"
  sha256 arm:   "3495709afa0e97409c14763fe253f936682542cd5a248342740e242286b6b3a4",
         intel: "c2f1a7fccc0d61249f3b3d1071bac4eb80588802fc017f4c2eb5fd986b7f779b"

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
