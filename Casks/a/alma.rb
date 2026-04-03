cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.750"
  sha256 arm:   "7370c659b5853121d67f84afc695adbbc4e52c3e11e54a44bb8b31b756ad824d",
         intel: "7c1b7e0b7d9be9b972dc595379f7d82ccc15ffc93091b6647b5e4fddaa70cbad"

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
