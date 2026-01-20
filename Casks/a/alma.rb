cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.227"
  sha256 arm:   "679f5743179deef6dc874a31a6061c7abeb1193f26254155ff2f7f5366ed5109",
         intel: "020298f89ba4d337c96d38f5007fa70db47910337d23a438fad02e825f3bc3c1"

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
