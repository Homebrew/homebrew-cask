cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.185"
  sha256 arm:   "b99b4236a2e9d14b18dec0e11247c5b858c5f89213f41f8829ef7ce1b6c2a118",
         intel: "68eba5a1177bfecda4ab9247b453fe945c64db7bdb326d2ea88ac048ca9fc218"

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
