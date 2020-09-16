cask "ring" do
  version "2.8.0"
  sha256 "da50edc68c0972766b16a1d3c42a5361d06aa8a155882a061f70fa0d90ca8a76"

  # ring-mac-app-assets.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ring-mac-app-assets.s3.amazonaws.com/production/Ring_#{version}.zip"
  appcast "https://ring-mac-app-assets.s3.amazonaws.com/production/ring-appcast.xml"
  name "Ring"
  desc "Client for Ring’s Wi-Fi connected video doorbells and security cameras"
  homepage "https://ring.com/"

  auto_updates true

  app "Ring.app"
end
