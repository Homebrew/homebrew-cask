cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.221"
  sha256 arm:   "9b799b7de928c244233eeb2a45ff269d54b1bb62137f1b4f0be38bc883dce9af",
         intel: "4f64645cf8c3e8f3a0fc1d8cb832b37c8ec260c6359e9514b30d73cc8f44bbb1"

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
