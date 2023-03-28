cask "betterdisplay" do
  version "1.4.7"
  sha256 "fd998b9f3e56b27238042930a5c110b1688a5fe4c2131b4c32a2862f8de9394a"

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
