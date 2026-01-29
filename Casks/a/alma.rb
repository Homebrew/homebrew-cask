cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.239"
  sha256 arm:   "67d23e3a566740e996d15f075793bf861102daad2e5786d823617119b9d1e08b",
         intel: "1194a1218ec8112fd1ec002acd97c29983c74d024dce6109b8755de17fd81a70"

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
