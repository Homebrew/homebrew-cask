cask "supremo" do
  version "4.11.6.2934"
  sha256 "4d7ca80358fc41de5e348d1476d2c21b536c6db4e9e857bbe499a81d1a9f0524"

  url "https://www.nanosystems.com/AutoUpdateS/macOS/stable/Supremo_#{version}.dmg",
      verified: "nanosystems.com/"
  name "Supremo"
  desc "Remote desktop software"
  homepage "https://www.supremocontrol.com/"

  livecheck do
    url "https://www.nanosystems.com/AutoUpdateS/macOS/stable/SupremoCast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Supremo.app"

  zap trash: [
    "~/Library/Application Support/SupremoRemoteDesktop",
    "~/Library/Preferences/Supremo.plist",
  ]
end
