cask "metabase" do
  version "0.36.4"
  sha256 "2a82bf198db524dd7f03a1265c4870137e4955d38d3719aa0719a85eccf823bc"

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast "https://s3.amazonaws.com/downloads.metabase.com/appcast.xml"
  name "Metabase"
  homepage "https://www.metabase.com/"

  app "Metabase.app"
end
