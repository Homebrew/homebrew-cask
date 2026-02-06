cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.258"
  sha256 arm:   "1ba1d4f71c7fcce1d42bb3afc8706dfa0d5f99b9193b53b2548dc30dd6bf1cdd",
         intel: "9c20b144702f4326b675673a48bcd7549c1a6d115e8ded1c12059e6b74df3d84"

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
