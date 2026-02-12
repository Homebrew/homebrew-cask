cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.345"
  sha256 arm:   "381a70d74bf3f306d0d59eb293e96805591abc7cc56392c50b2af0228c3b596d",
         intel: "227e73f392f031bc5fdc0c282faadb190a3b3194c0e6e90187f72d6a02a870f9"

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
