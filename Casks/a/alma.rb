cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.172"
  sha256 arm:   "80f0f20e71389fc179df58128ac324a16f9ff39f1373d2cac37fc796201192eb",
         intel: "fa0b9964b156144fd62a039d7e9831fb950e52e08f4209f352a5b8eb92a96a3f"

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
