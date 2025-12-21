cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.122"
  sha256 arm:   "edd6a6c747115b054143104e1f85af50da5f8b7149470b888194630ef7bab26c",
         intel: "7dbc5742f4be7b8520a53d456f17b89cd8dc21c71428ca126735a85beabee6ac"

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
  depends_on macos: ">= :tahoe"

  app "Alma.app"

  uninstall quit: "com.yetone.alma"

  zap trash: [
    "~/.config/alma",
    "~/Library/Application Support/alma",
    "~/Library/Preferences/com.yetone.alma.plist",
  ]
end
