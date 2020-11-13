cask "metabase" do
  version "0.37.1"
  sha256 "ebc78060dbbabd0d1b44b4ffcb8ae212c9b944ef2fa61843ba9674c273a020c7"

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast "https://s3.amazonaws.com/downloads.metabase.com/appcast.xml"
  name "Metabase"
  homepage "https://www.metabase.com/"

  app "Metabase.app"
end
