cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.247"
  sha256 arm:   "cd107c15de1beaefb8b1928890106c76912840bb7ba690839aedfcd6a67a02ed",
         intel: "69dfd58b208f48ef2d9b05d1332ef7b0b138e3a8983c34bd28d92b04fb29ba9e"

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
