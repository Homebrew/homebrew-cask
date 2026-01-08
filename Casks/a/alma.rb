cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.197"
  sha256 arm:   "7774f09ae31ba04049e016aa27b45041b0f75ab636780db57af61f7493a3e891",
         intel: "92897087d4c9e8e3a6cc22082e54414fb386c5523c170f9c620ed6912a823281"

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
