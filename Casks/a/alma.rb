cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.216"
  sha256 arm:   "a11e19e2b856f07a588bdc835d809c6a9ddf828d876540c6b406809d8942392d",
         intel: "5b05d79922801c6cf334bd2de35d49648e6b6ddaf14394587ca074557fd4daf8"

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
