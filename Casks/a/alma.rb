cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.190"
  sha256 arm:   "8b64fc17153a0439883e5a6ac67174051b50dd1bbb36a80f531f092b298d5b40",
         intel: "7b8b9009d545f57a5bafb3950c280bb8f3ebd8f9482466d759b3a9211c7589c4"

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
