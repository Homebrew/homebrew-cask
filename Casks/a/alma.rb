cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.269"
  sha256 arm:   "3267c5ecb3951f62aaf2c5e94f4769cac878677e29b23c2ba7da9156fb8d691d",
         intel: "14011599ea9671027a5a1aed2316f9454fd391adbc92c7f99cffa9ec6559e699"

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
