cask "cloudapp" do
  version "6.6.10,2355"
  sha256 "ec14314e336c562e66e106dde8271b8290e3f3ceff9ce34990a9548facac0597"

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version.csv.first}.#{version.csv.last}.zip"
  name "CloudApp"
  desc "Visual communication platform"
  homepage "https://www.getcloudapp.com/"

  livecheck do
    url "https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "CloudApp.app"

  zap trash: "~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist"
end
