cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.215"
  sha256 arm:   "be473475133d23edc9fda9300a1dd125d3743183c24a686ebded13047fb81239",
         intel: "de7699c7fa0a9fe76892691eb5c290a58b6de23f127afc2273b72420352acfe3"

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
