cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.212"
  sha256 arm:   "eb218fa1de7dd2bb44dc265cd12c1e53aa79861d67e7a4528dfc59c36795b505",
         intel: "39ec539cb6f89bef20bc6fb39abef478fbb1bfeeb25b3cf103d88eeb434347b3"

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
