cask "betterdisplay" do
  version "2.0.9"
  sha256 "e12d9b43585388f7c7bef3e30c0fc93c9361e6cf3b404c3ac0c1b7ebd3c7c978"

  url "https://github.com/waydabber/BetterDisplay/releases/download/v#{version}/BetterDisplay-v#{version}.dmg",
      verified: "github.com/waydabber/BetterDisplay/"
  name "BetterDisplay"
  desc "Display management tool"
  homepage "https://betterdisplay.pro/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "BetterDisplay.app"

  uninstall quit: "me.waydabber.BetterDummy"

  zap trash: [
    "~/Library/Application Support/BetterDummy",
    "~/Library/Caches/me.waydabber.BetterDummy",
    "~/Library/HTTPStorages/me.waydabber.BetterDummy",
    "~/Library/Preferences/me.waydabber.BetterDummy.plist",
  ]
end
