cask "dcv-viewer" do
  version "2020.1.1910"
  sha256 "edc9d41225824e912829a74619b8aa3cfb7bb231089839f6e26b2d3d07bec155"

  # d1uj6qtbmh3dt5.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.dmg"
  appcast "https://www.nice-dcv.com/"
  name "NICE DCV Viewer"
  homepage "https://www.nice-dcv.com/"

  app "DCV Viewer.app"
end
