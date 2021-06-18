cask "pdf-over" do
  version "4.1.3,1"
  sha256 :no_check

  url "https://webstart.buergerkarte.at/pdf-over/PDF-Over.dmg"
  name "PDF-Over"
  desc "Digitally sign PDFs with the Austrian Buergerkarte"
  homepage "https://webstart.buergerkarte.at/pdf-over/"

  app "PDF-Over.app"

  uninstall trash: "~/.pdf-over"

  caveats do
    depends_on_java "8+"
  end
end
