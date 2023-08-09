cask "betterdummy" do
  version "1.1.24"
  sha256 "5d02657f3aa77017f5a94af16d042cef011094b58f19b4d0f4a79e090311cfb3"

  url "https://github.com/waydabber/BetterDummy/releases/download/v#{version}/BetterDummy-v#{version}.dmg"
  name "betterdummy"
  desc "Dummy Display for Apple Silicon Macs to achieve custom resolutions"
  homepage "https://github.com/waydabber/BetterDummy"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "BetterDummy.app"

  zap trash: [
    "~/Library/Application Scripts/me.waydabber.BetterDummyHelper",
    "~/Library/Application Scripts/me.waydabber.BetterDummy",
    "~/Library/Containers/me.waydabber.BetterDummyHelper",
    "~/Library/Containers/me.waydabber.BetterDummy",
    "~/Library/Preferences/me.waydabber.BetterDummy.plist",
  ]

  caveats do
    discontinued

    <<~EOS
      #{token} has been renamed 'betterdisplay',
      install betterdisplay to continue receiving updates;

        brew install --cask betterdisplay
    EOS
  end
end
