cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.451"
  sha256 arm:   "3eec615eef9fa74341f19314d815a75df487c8515245ccab6ea84ebf5ce7a5f2",
         intel: "a1cfa17f8914bf5d3a0cc9d87ffd48899d265fa16f0e6d1c0382da9ec983a636"

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
