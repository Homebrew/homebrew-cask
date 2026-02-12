cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.374"
  sha256 arm:   "4eda7ab8cfb39ee07b6aa8356a23083131f6e436f832782926dee21950552356",
         intel: "1b6daf146832f49834332765faa8affa3f2f6ba05f60b61aa0b27a869491af37"

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
