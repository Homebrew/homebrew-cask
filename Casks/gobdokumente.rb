cask "gobdokumente" do
  if MacOS.version <= :catalina
    version "1.6.8"
    sha256 :no_check
    url "https://download.moapp.software/GoBDokumente.zip",
        verified: "download.moapp.software/"
  else
    version "1.8"
    sha256 :no_check
    url "https://download.moapp.software/GoBDokumente_BS.zip",
        verified: "download.moapp.software/"
  end

  name "GoBDokumente"
  name "GoBDocuments"
  desc "Document management system"
  homepage "https://gobdokumente.de/"

  livecheck do
    url "https://sparkle.moapp.software/gobdokumente.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "GoBDokumente.app"
end
