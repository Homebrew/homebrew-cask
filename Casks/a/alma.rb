cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.585"
  sha256 arm:   "d0dda3ae2aeaf551e3a2b418a7084b39d51c9cc2a083e035ed7c1282d5fc4401",
         intel: "50a5526a6843008b3d844e093c9a6b8822eeb9ef19f11fc547d14f663e79782a"

  url "https://updates.alma.now/alma-#{version}-mac-#{arch}.dmg"
  name "Alma"
  desc "AI chat application"
  homepage "https://alma.now/"

  livecheck do
    url "https://github.com/yetone/alma-releases"
    strategy :github_releases
    throttle 15
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
