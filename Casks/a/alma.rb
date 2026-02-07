cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.260"
  sha256 arm:   "b9b8992c9374c28bf32a9b0760faf50f48f350960adaad15d51b5c11e2374336",
         intel: "9df5cf44631a8f41fef96b288d2f26fe849cce6d9be9c1b48aa98ded02fb83ba"

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
