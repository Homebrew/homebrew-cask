cask "gobdokumente" do
  if MacOS.version <= :catalina
    version "1.6.8"
    sha256 "2c788492fd66ffec93c70cbd0d1c10ceb03bcf2af1f8ccc5fbbbbb154e4999b1"
    url "https://download.moapp.software/GoBDokumente.zip",
        verified: "download.moapp.software/"
  else
    version "1.8"
    sha256 :no_check
    url "https://download.moapp.software/GoBDokumente_BS.zip",
        verified: "download.moapp.software/"
  end

  appcast "https://sparkle.moapp.software/gobdokumente.xml"
  name "GoBDokumente"
  name "GoBDocuments"
  desc "Document management system"
  homepage "https://gobdokumente.de/"

  depends_on macos: ">= :el_capitan"

  app "GoBDokumente.app"
end
