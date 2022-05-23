cask "betterdummy" do
  version "1.1.12"
  sha256 "5cea95221f26c93e548509214392d3697cb38b5b2c696aaf1a17cdd89a246a20"

  url "https://github.com/waydabber/BetterDummy/releases/download/v#{version}/BetterDummy-v#{version}.dmg"
  name "betterdummy"
  desc "Dummy Display for Apple Silicon Macs to achieve custom resolutions"
  homepage "https://github.com/waydabber/BetterDummy"

  livecheck do
    url :url
    strategy :github_latest
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
