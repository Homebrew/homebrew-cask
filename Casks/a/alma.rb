cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.263"
  sha256 arm:   "602f821848b3152ad3f4cdadae09d434e88ff92a2e406fba2f1661db8233493f",
         intel: "92f4db2f35e502193f7877f7d5652f6d998bd75154a91967f6402e228f13798d"

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
