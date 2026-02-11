cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.292"
  sha256 arm:   "d8cf2fbaff93f8c87f56834f2baeae8e9932050428f178caaf83d23c3a436ac0",
         intel: "09c8a68a169a447f570021ec51d75f25d23d84140d21aacc4e0f8646e4107acc"

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
