cask "notchnook" do
  version "1.3"
  sha256 "6a3428ca07eb50c4f44caee9b89d9d6d8bbcf4beb92e9c6e0b9d066e5175f42f"

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
