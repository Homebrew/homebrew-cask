cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.170"
  sha256 arm:   "52bd7b78e2621d5fd9e888ffe100b0089c4cef13b24154ad3b72f4a89a8eb2c7",
         intel: "00f4e3881df26dfc6e7e8547b3e7bf8ee79359118621e64ace505097a3cec3a7"

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
