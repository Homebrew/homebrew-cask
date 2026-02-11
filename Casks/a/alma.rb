cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.291"
  sha256 arm:   "2b7917d45010980fe52cff6c35e33c1b6efbe337a640c9b0651549accfad7a6d",
         intel: "e20fcb12e561a2983c05764bcf710a905d0ad9d092b7c52b94bd72fd9f849c91"

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
