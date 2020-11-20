cask "ringcentral-classic" do
  version "20.4.20"
  sha256 "1140709c2f35c04108eb497e00ea9c09af85877f1b2b5b5c339bf6f22e6f02f0"

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
