cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.142"
  sha256 arm:   "1aa1a59f5fc32d04b4d474affff99ee6c9c68a1fb20633727c78ace342854041",
         intel: "b3f6c7a3919c8fdde7762db55311748d53d39d10d95b59ef060da900b00f880f"

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
