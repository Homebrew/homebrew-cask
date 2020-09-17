cask "cloudapp" do
  version "6.3.0.2129"
  sha256 "13c64ba6c200ed294978d42dae34080627ca04727af516d72054fb19c8347d0d"

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast "https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml"
  name "CloudApp"
  desc "Visual communication platform"
  homepage "https://www.getcloudapp.com/"

  auto_updates true

  app "CloudApp.app"

  zap trash: "~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist"
end
