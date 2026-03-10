cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.690"
  sha256 arm:   "d4be1df6b0a9775f27f45a8022d4dba5dd46cf516380d10016ed92bf0c584736",
         intel: "aed5949192a6ab40794dd8ca5c1387217edf60fcebc9fe68e429817ed2321284"

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
