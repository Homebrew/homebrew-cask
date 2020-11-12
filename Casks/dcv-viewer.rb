cask "dcv-viewer" do
  version "2020.2.2078"
  sha256 "3faa25ff7cbd769a43605216ce214fbde416d702d50588d48abc72e17d3b0f5f"

  # d1uj6qtbmh3dt5.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1uj6qtbmh3dt5.cloudfront.net/#{version.major_minor}/Clients/nice-dcv-viewer-#{version}.dmg"
  appcast "https://www.nice-dcv.com/"
  name "NICE DCV Viewer"
  homepage "https://www.nice-dcv.com/"

  app "DCV Viewer.app"
end
