cask "timemator" do
  version "3.0.3"
  sha256 "845750bf1bf0545a1a619a166defee9cac2dabd232e1f80a2831bac41fc801e3"

  url "https://s3-eu-west-1.amazonaws.com/catforce-timemator/releases/Timemator_#{version}.dmg",
      verified: "s3-eu-west-1.amazonaws.com/catforce-timemator/"
  name "Timemator"
  desc "Automatic time-tracking application"
  homepage "https://timemator.com/"

  livecheck do
    url "https://catforce-timemator.s3.amazonaws.com/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
