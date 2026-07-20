cask "font-tex-gyre-termes" do
  version "2.609,31_03_2026"
  sha256 "939908103cc061c6b1bc84d17c4fb11283f206ce79bb60f9f1073f4a2b5d8326"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/termes/tg_termes-otf-#{version.csv.first.dots_to_underscores}#{"-#{version.csv.second}" if version.csv.second}.zip"
  name "TeX Gyre Termes"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/termes"

  livecheck do
    url :homepage
    regex(/href=.*?termes-otf[._-]v?(\d+(?:[._]\d+)+)(?:-(\d+(?:[._]\d+)+))?\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        version = match[0].tr("_", ".")
        match[1].present? ? "#{version},#{match[1]}" : version
      end
    end
  end

  font "texgyretermes-bold.otf"
  font "texgyretermes-bolditalic.otf"
  font "texgyretermes-italic.otf"
  font "texgyretermes-regular.otf"

  # No zap stanza required
end
