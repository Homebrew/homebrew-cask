cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.252"
  sha256 arm:   "ede8b0aae29646b00c13bd57ebda7612bf99b56d5aae7e5230204bd96c027860",
         intel: "8f14b878cb61b33e8db290e76c3a4d10cc7be430fe7997c790bbebf8bf957815"

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
