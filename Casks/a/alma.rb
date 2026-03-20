cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.720"
  sha256 arm:   "8b2b024db00bc8825f09d07fc4e7bc742f8a3450301b3be5acdff67f01168a2c",
         intel: "b750c38752832bb935ce14aa2a4b7954a9597417f6eee52e638c144eea29df22"

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
