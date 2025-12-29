cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.160"
  sha256 arm:   "ca17a28ce40a24dedc2a39432f61d73965e2f7821315cb0bc00751c00c5abd9a",
         intel: "3b5d7ea6b77f9d2bc82e90005fe6a674c621f1d594c7c9fde408bf3a505b7e50"

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
