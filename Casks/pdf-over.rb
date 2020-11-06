cask "pdf-over" do
  version "4.2.2"
  sha256 "ea7bd079bc1eea5819401d0a81e7766c13baa35214dadcd0bb6824b79c36e479"

  url "https://webstart.buergerkarte.at/pdf-over/PDF-Over-#{version}.dmg"
  name "PDF-Over"
  desc "Digitally sign PDFs with the Austrian Buergerkarte"
  homepage "https://webstart.buergerkarte.at/pdf-over/"

  app "PDF-Over.app"

  uninstall trash: "~/.pdf-over"

  caveats do
    depends_on_java "8+"
  end
end
