cask "aircall" do
  version "2.5.9"
  sha256 "3dacd78ddb6076bd4b5248ff9c10382e63080ae16ad95e10b52fed581e4c4bd1"

  # s3-us-west-1.amazonaws.com/aircall-electron-releases/ was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/aircall-electron-releases/production/Aircall-#{version}.zip"
  appcast "https://electron.aircall.io/update/osx/0.0.0"
  name "Aircall"
  homepage "https://aircall.io/"

  auto_updates true

  app "Aircall.app"
end
