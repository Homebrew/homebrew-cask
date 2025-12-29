cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.156"
  sha256 arm:   "689e8dbbe5a0ead03b2d3fec2364557effd28614285cb2cbe9ee141cc41aa9d3",
         intel: "0a734ec447d3acd06b65392e7c91b5dedb353f152c30e1832173174e72fa0f30"

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
