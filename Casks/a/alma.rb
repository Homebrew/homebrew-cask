cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.403"
  sha256 arm:   "87b960232b52e94d3173803e4dcb1584d2186cf7d6f8dc470fba13d6476bf9ae",
         intel: "9b7b24504a5853fc8c48ea428846c46ef18cbed9663cb260922d87f5353015b6"

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
