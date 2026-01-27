cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.236"
  sha256 arm:   "6df9d388fbb604a91643770cc74d0fdb6866dad48983aa07fe889e204ff0429e",
         intel: "34be1af859869255fcc09c7fbf9a5b5f2528847c8d25c465d7b5dae23984d611"

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
