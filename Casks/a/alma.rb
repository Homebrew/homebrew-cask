cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.264"
  sha256 arm:   "01aa7ed18f0531f30d3759afac804e0a82dcafc178d85258173f78e31ea9c07a",
         intel: "fe75f2aa31873b836e33a9faaf1ef404474948cc52ffe1179645fad3094e70ec"

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
