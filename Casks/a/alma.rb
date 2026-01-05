cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.178"
  sha256 arm:   "2421c1a552fa490399db10cfe1d59eb9e529e4ec5ddf6a646df0598e8e16063d",
         intel: "e9d8088f2ba9315259aae494000c567a566624b8745319647f2d40da25e7c848"

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
