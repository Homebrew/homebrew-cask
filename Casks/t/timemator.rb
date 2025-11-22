cask "timemator" do
  version "3.2.0"
  sha256 "b9b9f8a0b7aa792a372a5cad82b9319015e539cc1769a31797681b397e72c3da"

  url "https://catforce-timemator.s3.amazonaws.com/releases/Timemator_#{version}.dmg",
      verified: "catforce-timemator.s3.amazonaws.com/"
  name "Timemator"
  desc "Automatic time-tracking application"
  homepage "https://timemator.com/"

  livecheck do
    url "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Timemator.app"

  zap trash: [
    "~/Library/Application Scripts/com.catforce.timemator.macos.TimematorWidgets",
    "~/Library/Application Scripts/group.catforce.timemator",
    "~/Library/Application Support/com.catforce.timemator.macos",
    "~/Library/Application Support/Timemator",
    "~/Library/Caches/com.catforce.timemator.macos",
    "~/Library/Containers/com.catforce.timemator.macos.TimematorWidgets",
    "~/Library/Group Containers/group.catforce.timemator",
    "~/Library/Preferences/com.catforce.timemator.macos.plist",
  ]
end
