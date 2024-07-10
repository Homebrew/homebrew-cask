cask "notchnook" do
  version "1.1.7"
  sha256 "d87d10d77606384f37b00851df5bdb273dd03a115a8d2ce5f22f4c40851d51ce"

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
