cask "ring" do
  version "2.7.0"
  sha256 "73b326ab21f5dbd5c9104bc5ac328292c34e9061ed4283e054cefde4794291b8"

  # ring-mac-app-assets.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast "https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml"
  name "Ring"
  desc "Client for Ring’s Wi-Fi connected video doorbells and security cameras"
  homepage "https://ring.com/"

  auto_updates true

  app "Ring.app"
end
