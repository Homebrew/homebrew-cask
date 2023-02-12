cask "betterdisplay" do
  version "1.4.2"
  sha256 "36d10d556c8f1eb632d42cccc95037f8eeb4e1949d74d17a468a6c05d2f34873"

  url "https://github.com/waydabber/BetterDisplay/releases/download/v#{version}/BetterDisplay-v#{version}.dmg",
      verified: "github.com/waydabber/BetterDisplay"
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
