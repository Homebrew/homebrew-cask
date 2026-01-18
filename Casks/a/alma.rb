cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.219"
  sha256 arm:   "405b4a8bdfb7d0bd4241c6d85858df17b5f86608d223489eae9c9e9073e4027e",
         intel: "b3f263b5d1afce3abcbbaffaae77eb1890d5efa62b9c6cdf22a0c3ee57ce1da9"

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
