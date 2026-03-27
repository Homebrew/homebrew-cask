cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.735"
  sha256 arm:   "33fefac229f5c0ad6146e5f22f85a1a577e83cbee88c3eec4ec099da4edc8b09",
         intel: "5d5dbbbe645ec7e6bea20e73bc79a19c25ff0e124fca1f18106bdf1efdf74480"

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
