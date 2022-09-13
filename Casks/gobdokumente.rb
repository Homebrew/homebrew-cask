cask "gobdokumente" do
  if MacOS.version <= :catalina
    version "1.6.8"
    sha256 :no_check
    url "https://download.moapp.software/GoBDokumente.zip",
        verified: "download.moapp.software/"

    livecheck do
      skip "Legacy version for catalina and earlier"
    end
  else
    version "2.1"
    sha256 :no_check
    url "https://download.moapp.software/GoBDokumente_BS.zip",
        verified: "download.moapp.software/"

    livecheck do
      url "https://sparkle.moapp.software/gobdokumente.xml"
      strategy :sparkle
    end
  end

  name "GoBDokumente"
  name "GoBDocuments"
  desc "Document management system"
  homepage "https://gobdokumente.de/"

  depends_on macos: ">= :el_capitan"

  app "GoBDokumente.app"
end
