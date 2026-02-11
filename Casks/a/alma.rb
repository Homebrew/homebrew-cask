cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.297"
  sha256 arm:   "05b610db66741106fe52227f78e17f75f25034fe903ea0a736342399ece2ce42",
         intel: "b270ceab229701e6fec47d49e80963a0b125b0d52c4eed276be9854ac150d9f4"

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
