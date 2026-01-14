cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.214"
  sha256 arm:   "b2717bc520d3411ce233ce495bfe7241440436a00943474f598c1ad386a13f5f",
         intel: "29c4a80483c9e52e60700752f00c0b7e83c882159128fa5d604aae57aed3d00f"

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
