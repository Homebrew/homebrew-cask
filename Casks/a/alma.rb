cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.154"
  sha256 arm:   "8d1db525368418aec5e29ba5c63422b136c5dedf51b9d99b5072dcb3d9027de0",
         intel: "65a975e4d45ad4182e97a0f9b0f60a2ff0e3053a199cef7ba857c3aafb41fcb7"

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
