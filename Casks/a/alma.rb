cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.127"
  sha256 arm:   "220159904965aa50214e28fc6c0d7f9a6d0f741d593a9a6f10eec74873125a1a",
         intel: "c02852b176720307931a983923784e88967fd176533296506af700d51215e080"

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
