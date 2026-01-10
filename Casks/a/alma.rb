cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.204"
  sha256 arm:   "08d8c5b1b02c87115d31c3c291a7fe1c71f9c3c489309e35833d4b8185c22a7a",
         intel: "2520a97fcb7db0584030cd5caab9049dd830ab3ab472cf5a5a6b9782ae1541dc"

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
