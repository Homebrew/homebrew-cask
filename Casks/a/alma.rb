cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.132"
  sha256 arm:   "e60f91156f49f16bad738995b4ea799134a7cfed88e161977e2eeac5dfeec552",
         intel: "7330b5e90d14cb5e4f925be5b71d76733cbb052da8737ec05797f8fe6f7e2ab4"

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
