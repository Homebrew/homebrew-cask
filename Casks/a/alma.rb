cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.437"
  sha256 arm:   "df777f4ffd90503d462313a01cfe631fdec8639b10ddde526e24ac24a472cde5",
         intel: "7bcb24f11ae289c08830d0c7a8e1386a5e766c4b459d94b67ae68947acf677c6"

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
