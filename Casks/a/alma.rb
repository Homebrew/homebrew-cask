cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.760"
  sha256 arm:   "55a33f9dc7a30010e52671adaa2319c530996a95215e7c81f37f138669797501",
         intel: "4de4d8766ef3ad8d3a39292cddf5c56f942174390c96b8c79886ddafcaa89bd4"

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
