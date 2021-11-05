cask "betterdummy" do
  version "1.0.8"
  sha256 "c1df44d6f84662278a36047720405748d5982b54f70776180820ed99f74bf879"

  url "https://github.com/waydabber/BetterDummy/releases/download/v#{version}/BetterDummy-v#{version}.zip"
  name "betterdummy"
  desc "Dummy Display for Apple Silicon Macs to achieve custom resolutions"
  homepage "https://github.com/waydabber/BetterDummy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "BetterDummy.app"

  zap trash: [
    "~/Library/Application Scripts/me.waydabber.BetterDummyHelper",
    "~/Library/Application Scripts/me.waydabber.BetterDummy",
    "~/Library/Containers/me.waydabber.BetterDummyHelper",
    "~/Library/Containers/me.waydabber.BetterDummy",
    "~/Library/Preferences/me.waydabber.BetterDummy.plist",
  ]
end
