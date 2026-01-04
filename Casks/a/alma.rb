cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.176"
  sha256 arm:   "6c7ec36c87b76e71163a9cb09d22bd977a3249c04035be791b97f1720700b66f",
         intel: "1e0aae088ec50514c9c087ac6b372fb8936b213d9a8660356f97b1de21e43ce3"

  url "https://updates.alma.now/alma-#{version}-mac-#{arch}.dmg"
  name "Alma"
  desc "AI chat application"
  homepage "https://alma.now/"

  livecheck do
    url "https://updates.alma.now/latest-mac.yml"
    strategy :yaml do |yaml|
      yaml["version"]
    end
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
