cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.660"
  sha256 arm:   "ecf054b87e82fd46a26ed8ae0a2560d2a8c03ae61658f9f1dfe8231291476a42",
         intel: "7755bfd66a2c29a51f2c204da57f2109499735f14dbd02136998a86843438da3"

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
