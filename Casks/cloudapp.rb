cask "cloudapp" do
  version "6.6.7,2317"
  sha256 "0fc85eed545eb04b1b5ba0040df6fb21ac70161cf89110a81a64c3d52cf77ae8"

  url "https://downloads.getcloudapp.com/mac/CloudApp-#{version.csv.first}.#{version.csv.last}.zip"
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
