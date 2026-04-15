cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.759"
  sha256 arm:   "7fbab9c56b34efdc5edf88bdbc065ef5a6bb64d6a36fdb37a10e4379706114b5",
         intel: "c546149395ff226194a137cd0188a9b2a6fcd4b785f91f9157fb577dc0d4678d"

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
