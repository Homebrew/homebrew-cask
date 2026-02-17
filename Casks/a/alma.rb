cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.540"
  sha256 arm:   "67c3a7fc0bf36c25c16dbd87ced598823271d7e65460a0a4c494d2ea51ee4dbc",
         intel: "98de3bdfa44875016e7c157cec7b288d5d2fc05b328ef1eeb4c3749f8d1a546a"

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
