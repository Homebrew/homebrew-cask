cask "notchnook" do
  version "1.4"
  sha256 "2f2fc41ea95b8d9972508739bbbebf4540bcfe518ead2a5d51892fb557d6b9c1"

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
