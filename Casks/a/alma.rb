cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.136"
  sha256 arm:   "cb083bee996dbd3ace07f3670fa14f584ab1ab987b67f7c602685cb392b6f57c",
         intel: "5e5270a503926fae039e0fb641368a65ec4c5cc8043029fd5e260b078f25ffcd"

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
