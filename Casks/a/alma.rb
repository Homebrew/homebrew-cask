cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.408"
  sha256 arm:   "3e2fe421c8769b0de8e6bb39034269237124a1a790fca924899a613c734a3a19",
         intel: "7cbb18fcf7aac7495469e35c480b457d48ec6f6db0d9eca404166f72fd4db8cc"

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
