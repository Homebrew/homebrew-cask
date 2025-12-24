cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.139"
  sha256 arm:   "3dcb7622608feff2a61c639ed017547129ebb333d4ff16b0fe6521e928c59c3b",
         intel: "32fd08a7fb226a3eb2e2659f525b6be191967b18042883f24021ad50098140ab"

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
