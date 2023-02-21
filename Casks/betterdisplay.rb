cask "betterdisplay" do
  version "1.4.3"
  sha256 "6e2a3b23a1d7c84a1788bffb51ac67c8d566f777bf4cee56244b6ffbedd350ea"

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
