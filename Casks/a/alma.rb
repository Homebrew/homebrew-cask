cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.249"
  sha256 arm:   "853801ab7d96b54bb77ef64e173e5aade74715d722944b80896702c4eb1efc43",
         intel: "377ebf894c77e23e4b317c3fdc85fbfcf9c08b659bdba6a001d98063bf84fa6a"

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
