cask "gobdokumente" do
  version "1.7.2"
  sha256 "2c788492fd66ffec93c70cbd0d1c10ceb03bcf2af1f8ccc5fbbbbb154e4999b1"

  # download.moapp.software/ was verified as official when first introduced to the cask
  url "https://download.moapp.software/GoBDokumente.zip"
  appcast "https://sparkle.moapp.software/gobdokumente.xml"
  name "GoBDokumente"
  homepage "https://gobdokumente.de/"

  app "GoBDokumente.app"
end
