cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.277"
  sha256 arm:   "82c903e76d05359be4f061bf4efb6fe7228b8e324d36ede0201bf8c37663cc03",
         intel: "7b0ade702601c6aeb2fa48f714da47c8e5e5c3960868cc1f0212a8f76a4e93f7"

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
