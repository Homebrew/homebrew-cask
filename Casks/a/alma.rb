cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.148"
  sha256 arm:   "098d9e59c0846cdf3fdb99102ac78a590ff1140a1e7f3458cfac500217c9d2ee",
         intel: "681be7e64d2dd9b90841c18f16d5c17e2d0e4d37f73b139172c97cfaa0dbdff9"

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
