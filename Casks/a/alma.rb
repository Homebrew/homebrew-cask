cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.419"
  sha256 arm:   "3ee4d8661a6919e119176dd9972859ee24336bd03ecc3482f348d253787cb07c",
         intel: "e1c9a23d7dd52195b4b60d2aa901ebe967c74ca9daa553fc996a35e0c78ce322"

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
