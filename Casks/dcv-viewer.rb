cask "dcv-viewer" do
  version "2020.1.1986"
  sha256 "75db5edff743f68ca6a56a08447016841e6417675a49b5024a08d9cfdded7f01"

  # d1uj6qtbmh3dt5.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.dmg"
  appcast "https://www.nice-dcv.com/"
  name "NICE DCV Viewer"
  homepage "https://www.nice-dcv.com/"

  app "DCV Viewer.app"
end
