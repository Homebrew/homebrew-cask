cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.254"
  sha256 arm:   "914a65eaa6a73ad6fcd31f5a8f7a31ef25517cbdf4e3cad88b0fabf19fd63287",
         intel: "dbba1acc56ed6317f7ee85dc088e4d7fb45c1141e166d43572737c050a7f65ac"

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
