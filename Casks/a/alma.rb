cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.232"
  sha256 arm:   "1796a4600c75544855fb0f2eb3b6c6d13e47435555669fb89b30b2103e125833",
         intel: "061a5dc885a36ef9fe82fdb0eeb545cf123e128401d5d8e06b1b3b66491238bf"

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
