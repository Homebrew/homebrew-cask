cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.328"
  sha256 arm:   "d17db08dd0165bfcf3e003cfd16d7ec373c5b934241fc688172c17924c71522f",
         intel: "2c4df8efbb49f1ec581fbb84bc81ab4f6a9c0a5e64a4031f05494848e7d725a8"

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
