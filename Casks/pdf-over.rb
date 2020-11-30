cask "pdf-over" do
  version '4.2.3'
  sha256 'f8aee47f5cfe03ce3c5a1fda3f961a10aacba802650c855d8dc9bc33af16566d'

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
