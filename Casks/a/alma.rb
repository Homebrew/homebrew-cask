cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.486"
  sha256 arm:   "e1ff613d1f2308b8bf3fe8ecebbd2b0a87cf5b85d35138f09d30241708e4eace",
         intel: "c85284e6e91dd65054e97dfffe079cb1c9874488d365aefc6af66943bd91f005"

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
