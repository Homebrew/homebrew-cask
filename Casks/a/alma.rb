cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.151"
  sha256 arm:   "cbddba0e2aa969f2f0d2a9d7a52cd2f0f8fa9755ae2c56b66638f4f6eceba757",
         intel: "d3898ba030100c5a0155e20128ed3c2b2f11cdc2ea845ae6061521dfead7f63b"

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
