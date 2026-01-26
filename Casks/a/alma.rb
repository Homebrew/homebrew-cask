cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.235"
  sha256 arm:   "8a98700c14c6632835a2abbcb5df0632b28d2167fc2cd65746384d55db129ed4",
         intel: "0e03c7c61e44933e9686f74da1e2a5066c2f958f86370209bfa0e14dc0bf225f"

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
