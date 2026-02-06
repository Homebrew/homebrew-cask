cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.255"
  sha256 arm:   "40f9fa9ad240e14607bb799146ece96a616c81bd580781f8559f22b90f15b932",
         intel: "fdd6b452e9e6f29c511a75b6b3c2a45c3b576f4e5ed159e5e7019f3ad4acbf0a"

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
