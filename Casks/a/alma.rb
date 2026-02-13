cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.401"
  sha256 arm:   "18379731d9062444f7e211b1a6906a17929f8ce5b4b7208a8c79389365b65567",
         intel: "ae484d882aba7d1b4b87a8d0d829aa602a7893d8c828cc6f06458226d2dbea01"

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
