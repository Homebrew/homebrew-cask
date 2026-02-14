cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.435"
  sha256 arm:   "b8c5bec3b800168a5ad0983fe44762dc57e209108ed94f6f59b6d7e5c958f0fb",
         intel: "dbf0b8621fc8a8ff46622f4d999722cbe9dce2d3a2542a360a6d62ae7756a243"

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
