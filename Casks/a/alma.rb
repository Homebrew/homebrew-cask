cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.163"
  sha256 arm:   "2a4c7888549cab6858454f3a9ec8c64c3307eb86c3ed809e8dc7867bf6270398",
         intel: "fab40e2aaba09eb1a5de772a14ef21e1e76544e9f8ac53fb51fb25f8c6759e36"

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
