cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.462"
  sha256 arm:   "fecba18b88bc7232b2134699d227377e2b43dfa56ecf2dda8492a6a0ae19e54f",
         intel: "47d81bcfe40e7e19e6132fa7f5afbb5222af0f41bd2d15bf46794b99680a1f61"

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
