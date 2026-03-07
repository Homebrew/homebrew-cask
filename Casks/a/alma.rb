cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.675"
  sha256 arm:   "ce57bf987e0836d742f92571c097d4385df32a0a8d03ac2429cb1a151ec49a00",
         intel: "171dd11a3999c8867b7ad0baeb45345c6bc72548de581240a4f647f6e8bd114c"

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
