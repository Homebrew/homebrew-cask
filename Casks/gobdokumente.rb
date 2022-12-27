cask "gobdokumente" do
  version "2.1"
  sha256 :no_check

  url "https://download.moapp.software/GoBDokumente_BS.zip",
      verified: "download.moapp.software/"
  name "GoBDokumente"
  name "GoBDocuments"
  desc "Document management system"
  homepage "https://gobdokumente.de/"

  livecheck do
    url "https://sparkle.moapp.software/gobdokumente.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "GoBDokumente.app"
end
