cask "metabase" do
  version "0.37.0.1"
  sha256 "8f608a99d4abf1c7e7d2d5cccf18d988c7f1b93d6d42dd0e3201d7ed570dd385"

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast "https://s3.amazonaws.com/downloads.metabase.com/appcast.xml"
  name "Metabase"
  homepage "https://www.metabase.com/"

  app "Metabase.app"
end
