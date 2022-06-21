cask "betterdisplay" do
  version "1.2.6"
  sha256 "2d9d919ee35d73ac0e09a89b1a2b2ddd9ddfe9a966986ebdd7a0fb27febc0d42"

  url "https://github.com/waydabber/BetterDisplay/releases/download/v#{version}/BetterDisplay-v#{version}.dmg"
  name "BetterDisplay"
  desc "Management, Custom Resolution, Brightness & Dummy Displays (fka BetterDummy)"
  homepage "https://github.com/waydabber/BetterDisplay"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "BetterDisplay.app"

  zap trash: [
    "~/Library/Application Scripts/me.waydabber.BetterDiaplayHelper",
    "~/Library/Application Scripts/me.waydabber.BetterDisplay",
    "~/Library/Containers/me.waydabber.BetterDisplayHelper",
    "~/Library/Containers/me.waydabber.BetterDisplay",
    "~/Library/Preferences/me.waydabber.BetterDisplay.plist",
  ]
end
