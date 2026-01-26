cask "notchnook" do
  version "1.5.5"
  sha256 "11d03f16e8de481a1ee7bc910736ef67df2922ab8a1cb823d0e4f502b29fe527"

  url "https://lo.cafe/notchnook-files/NotchNook-#{version}.zip"
  name "NotchNook"
  desc "Handy utility to manage and customize the notch area"
  homepage "https://lo.cafe/notchnook"

  livecheck do
    url "https://lo.cafe/notchnook-files/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "NotchNook.app"

  zap trash: [
    "~/Library/Application Support/NotchNook",
    "~/Library/Caches/lo.cafe.NotchNook",
    "~/Library/HTTPStorages/lo.cafe.NotchNook",
    "~/Library/Preferences/lo.cafe.NotchNook.plist",
  ]
end
