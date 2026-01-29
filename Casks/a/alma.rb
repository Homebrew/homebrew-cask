cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.241"
  sha256 arm:   "f4978825ed823b34049504aa61fe1c2abbbe6b2369fa005160d25df8c242d15b",
         intel: "2184886df35693464227797adba40666e7cfb4dad9a3cc7318e0e1b6942a6537"

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
