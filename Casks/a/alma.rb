cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.223"
  sha256 arm:   "8b69b3a9650fe722a7400e8fe1c9bb2cea83660999f8721e0846f8cd2c029e11",
         intel: "cdad07bbe58d3f2bb1a4be9a2ef7b26715d6b5957d2382b0e434fb38809f2c40"

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
