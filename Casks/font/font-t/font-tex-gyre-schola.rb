cask "font-tex-gyre-schola" do
  version "2.609,31_03_2026"
  sha256 "40f76a93a159ba7a76d6fe2ac6a54b7eb480afc94557742505a847c571da13fc"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/schola/tg_schola-otf-#{version.csv.first.dots_to_underscores}#{"-#{version.csv.second}" if version.csv.second}.zip"
  name "TeX Gyre Schola"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/schola"

  livecheck do
    url :homepage
    regex(/href=.*?schola-otf[._-]v?(\d+(?:[._]\d+)+)(?:-(\d+(?:[._]\d+)+))?\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        version = match[0].tr("_", ".")
        match[1].present? ? "#{version},#{match[1]}" : version
      end
    end
  end

  font "texgyreschola-bold.otf"
  font "texgyreschola-bolditalic.otf"
  font "texgyreschola-italic.otf"
  font "texgyreschola-regular.otf"

  # No zap stanza required
end
