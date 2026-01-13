cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.211"
  sha256 arm:   "3fe9cb6d9476f02d61d4aeff24a20d3ba34cd478c514c128dd2cfd782eee8a10",
         intel: "1e834483f1231fc1a78467a305d352db1f966892d10ed2b386a8c590ddcb2382"

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
