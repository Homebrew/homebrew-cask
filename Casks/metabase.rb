cask "metabase" do
  version "0.37.0.2"
  sha256 "6c5b381062c0c374b5e73888f89e638b0102663d2dbca89967b4321b4cae861a"

  # s3.amazonaws.com/downloads.metabase.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version}/Metabase.zip"
  appcast "https://s3.amazonaws.com/downloads.metabase.com/appcast.xml"
  name "Metabase"
  homepage "https://www.metabase.com/"

  app "Metabase.app"
end
