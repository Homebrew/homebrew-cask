cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.147"
  sha256 arm:   "1a30ef861db0822c562563306b31ca9b8c1da592d2447928f96e6907312e052f",
         intel: "f55f3679ef717f26131a808090b0dbf9e5a147de72d6e2e503550ef15c26acdb"

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
