cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.237"
  sha256 arm:   "0ed864d88ef1e65b1bdce01236c2feae0013a5acd75de65865840229912e76f1",
         intel: "2769059d84ef7781496b997a76d2c194356bf9d3ee0e7b41a8ad2ed62f099519"

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
