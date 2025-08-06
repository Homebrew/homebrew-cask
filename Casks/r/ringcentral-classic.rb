cask "ringcentral-classic" do
  version "20.4.30"
  sha256 "d3bd1958f80f0ca9df2de574f37f8ed0f954e6b618091cbf07141a2699a739f6"

  url "https://downloads.ringcentral.com/glip/rc/#{version}/mac/RingCentral%20Classic-#{version}.dmg"
  name "RingCentral Classic"
  desc "VOIP and message application"
  homepage "https://www.ringcentral.com/apps/rc-classic"

  livecheck do
    url "https://downloads.ringcentral.com/glip/rc/GlipForMac"
    strategy :header_match
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Glip.app", target: "RingCentral Classic.app"

  uninstall signal: [
    ["TERM", "com.Glip.Glip.helper"],
    ["TERM", "com.Glip.Glip"],
  ]

  zap trash: [
    "~/Library/Application Support/Glip",
    "~/Library/Caches/com.Glip.Glip",
    "~/Library/Caches/com.Glip.Glip.ShipIt",
    "~/Library/Preferences/com.Glip.Glip.helper.plist",
    "~/Library/Preferences/com.Glip.Glip.plist",
    "~/Library/Saved Application State/com.Glip.Glip.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
