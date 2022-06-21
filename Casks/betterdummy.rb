cask "betterdummy" do
  version "1.1.24"
  sha256 "5d02657f3aa77017f5a94af16d042cef011094b58f19b4d0f4a79e090311cfb3"

  url "https://github.com/waydabber/BetterDummy/releases/download/v#{version}/BetterDummy-v#{version}.dmg"
  name "betterdummy"
  desc "Deprecated: Now BetterDisplay"
  homepage "https://github.com/waydabber/BetterDummy"

  livecheck do
    skip "Deprecated - migrate to betterdisplay cask"
  end

  auto_updates true

  app "BetterDummy.app"

  zap trash: [
    "~/Library/Application Scripts/me.waydabber.BetterDummyHelper",
    "~/Library/Application Scripts/me.waydabber.BetterDummy",
    "~/Library/Containers/me.waydabber.BetterDummyHelper",
    "~/Library/Containers/me.waydabber.BetterDummy",
    "~/Library/Preferences/me.waydabber.BetterDummy.plist",
  ]
end
