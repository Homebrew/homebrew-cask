cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.705"
  sha256 arm:   "7ca3e4d15ed8027a0eb1c115d258d5f054d064b236a48fa994ea16959fc1c5f9",
         intel: "b7c4f6f10a331ddb4b73fe9aee6567b98bb52c09abe71973eee7a8fa4ae5fd2a"

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
