cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.191"
  sha256 arm:   "76ea131c3d0f05f7924c8e9887e32c9433f94ed01b438dc45b041b8dbde8df9f",
         intel: "3970bf456e28f7b4a0310cf67a017c3761c508f89721ed13fbc63f84dce03664"

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
