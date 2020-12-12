cask "cloudapp" do
  version "6.4.2.2192"
  sha256 "51f9c335f2592d12d81a06741798ca3cb6f7f968850814f02d1774290b1d7e8b"

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast "https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml"
  name "CloudApp"
  desc "Visual communication platform"
  homepage "https://www.getcloudapp.com/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "CloudApp.app"

  zap trash: "~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist"
end
