cask "betterdisplay" do
  version "1.4.6"
  sha256 "501203d2b655a9e5f07f2bfb27f4b22d0e64f166e7a84f45ee550068e7612c29"

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
