cask "metabase" do
  version "0.36.5.1"
  sha256 "3e3f9e8041144fb391d3089e60f8ce0e5ee16c081f0258f83202a0efbbf324f7"

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast "https://s3.amazonaws.com/downloads.metabase.com/appcast.xml"
  name "Metabase"
  homepage "https://www.metabase.com/"

  app "Metabase.app"
end
