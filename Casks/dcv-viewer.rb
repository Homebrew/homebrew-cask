cask "dcv-viewer" do
  version "2020.2.2117"
  sha256 "cf2cb0fa11895541029f8ad7acf6000d8d844def783f5c8264887eae341d5635"

  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.dmg",
      verified: "d1uj6qtbmh3dt5.cloudfront.net/"
  appcast "https://www.nice-dcv.com/"
  name "NICE DCV Viewer"
  homepage "https://www.nice-dcv.com/"

  app "DCV Viewer.app"
end
