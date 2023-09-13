cask "betterdisplay" do
  version "2.0.9"
  sha256 "e12d9b43585388f7c7bef3e30c0fc93c9361e6cf3b404c3ac0c1b7ebd3c7c978"

  url "https://github.com/waydabber/BetterDisplay/releases/download/v#{version}/BetterDisplay-v#{version}.dmg"
  name "BetterDisplay"
  desc "Dummy Display for Apple Silicon Macs to achieve custom resolutions"
  homepage "https://github.com/waydabber/BetterDisplay"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "BetterDisplay.app"

  zap trash: [
    "~/Library/Application Scripts/me.waydabber.BetterDisplayHelper",
    "~/Library/Application Scripts/me.waydabber.BetterDisplay",
    "~/Library/Containers/me.waydabber.BetterDisplayHelper",
    "~/Library/Containers/me.waydabber.BetterDisplay",
    "~/Library/Preferences/me.waydabber.BetterDisplay.plist",
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
