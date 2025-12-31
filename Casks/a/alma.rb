cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.168"
  sha256 arm:   "10a6b4829b82ed0a7ffec92c8b49bff2b2be98b8616af5f3c2c183266443b3f8",
         intel: "ed12c06766e3597324a7b1dac9ce00fbdc5d8b5a29c8d827166ea95def0f1200"

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
