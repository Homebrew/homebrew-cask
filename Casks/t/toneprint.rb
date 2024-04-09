cask "toneprint" do
  version "4.5.11"
  sha256 "f5f4a61d0ed5cce8db861b68638295d15a4600df312d05b9e0b4b595cadbf26c"

  url "https://mediadl.musictribe.com/download/software/tcelectronic/TonePrintEditor/Toneprint_#{version}.dmg",
      verified: "mediadl.musictribe.com/download/software/tcelectronic/TonePrintEditor/"
  name "TonePrint"
  desc "Alter the character of your TonePrint pedal"
  homepage "https://www.tcelectronic.com/tonePrints.html"

  livecheck do
    url "https://www.tcelectronic.com/.rest/musictribe/v1/downloadcenter/solr-dldatatable?brandName=tcelectronic&modelCode=P0CLC&iDisplayStart=0&iDisplayLength=15"
    regex(/TonePrint[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Toneprint.app"

  zap trash: [
    "~/Library/Application Support/TonePrint",
    "~/Library/Caches/com.tcelectronic.toneprint",
  ]
end
