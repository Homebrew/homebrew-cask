cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.192"
  sha256 arm:   "c8e7d3f0ad8a0ffeb20625952d1b0a80be009202dc29587108f8d06699955cff",
         intel: "ba8e00914f8229f2153bd691be8c84dd12ff7c7212e568b547a242b5cb109aac"

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
