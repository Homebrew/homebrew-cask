cask "metabase" do
  version "0.36.2"
  sha256 "78898ccb68ba8a0ce3ab4538536cb665678ec77e1913c1891dcc393eb608ded9"

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast "https://s3.amazonaws.com/downloads.metabase.com/appcast.xml"
  name "Metabase"
  homepage "https://www.metabase.com/"

  app "Metabase.app"
end
