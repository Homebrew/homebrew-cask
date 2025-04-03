cask "notchnook" do
  version "1.4.4"
  sha256 "01bb24b87cb5b252af57c11ce4ce691d887dce13e4a35a3dc10a672aa3fcff3d"

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
