cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.134"
  sha256 arm:   "e86b7c87e90d1c47e25a8a2cc7d09e4da37d4de72e9317064ff71d0f2605790f",
         intel: "f76fc781efa6939a922b3e390f929064502e73bf41bafb3e8a25cdd47178c641"

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
