cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.180"
  sha256 arm:   "15e1cf2afa86bf83679da580f554aff8d75b0ecdcdcb3ecc7aa6c04dd524fd86",
         intel: "32920368ff5d5a69ee4ab6b8caa040d8d160d9eebb6ece59e6d5d21377dbf942"

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
