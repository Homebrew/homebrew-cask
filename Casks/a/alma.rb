cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.164"
  sha256 arm:   "1e96cfbcee377c42667feb599d5d82d841672fceae5db7e3f075352597cc62c9",
         intel: "e790230ce8b63259fc73964078bb310641623d3fbd8de3f84dada71c0a937925"

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
