cask "pdf-over" do
  version "4.3.2,13072021"
  sha256 :no_check

  url "https://webstart.buergerkarte.at/pdf-over/PDF-Over.dmg"
  name "PDF-Over"
  desc "Digitally sign PDFs with the Austrian Buergerkarte"
  homepage "https://webstart.buergerkarte.at/pdf-over/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "PDF-Over.app"

  uninstall trash: "~/.pdf-over"

  caveats do
    depends_on_java "8+"
  end
end
