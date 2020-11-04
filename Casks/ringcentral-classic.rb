cask "ringcentral-classic" do
  version "20.4.10"
  sha256 "41a072a9d5da4d0a6e9c8313f6f8dc09722d1819d6d8bc3a993607397909ca01"

  url "https://downloads.ringcentral.com/glip/rc/#{version}/mac/RingCentral%20Classic-#{version}.dmg"
  name "RingCentral Classic"
  homepage "https://www.ringcentral.com/apps/rc-classic"

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
end
