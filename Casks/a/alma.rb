cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.268"
  sha256 arm:   "772de865bf22a0ebd258bf27acf9163f69a74234b92bdd68202fcb9df32af94e",
         intel: "605b11dbac98613a6916a307d416070980eec5ef8169af534495f428b8a3033b"

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
