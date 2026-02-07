cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.261"
  sha256 arm:   "c0abb5405de868ca203635dee86a95b3a5a4bd711d14f6a4537cb5f7ec007f3c",
         intel: "003025d661a287e6f908fa4baaf3ac1443844557b9c0cf1fabadc84a89e01792"

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
