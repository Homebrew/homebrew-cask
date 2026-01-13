cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.213"
  sha256 arm:   "a5aa492f2de798cb1db3aa4dde5035c965f2c9541caf63f5ec3a77adf6df6aa1",
         intel: "1b18825eeb58763d25b7bc78b8e2dfc9d4dea5fcc33d58e05a6ee703e25b2f78"

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
