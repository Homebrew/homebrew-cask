cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.250"
  sha256 arm:   "402cd3ab001aac74f95edadf4df818e15187cba17ba6abe3ce8907b147eff434",
         intel: "7b0260f6771af648b06d7567fe1e1273134bb16c7f006cb8a97589bc3c49f03d"

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
