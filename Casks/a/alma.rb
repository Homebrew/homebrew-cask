cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.188"
  sha256 arm:   "116119c57b9c824beb8eeb6738ff581f3c708d78df24833a30dee98866f179d7",
         intel: "5ba9b4c5ec3f114c872efae31d9d10f31269a0bcb7528d994baca730990b1962"

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
