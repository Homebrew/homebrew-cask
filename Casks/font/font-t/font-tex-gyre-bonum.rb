cask "font-tex-gyre-bonum" do
  version "2.609,31_03_2026"
  sha256 "6b5798a1d07aa495a369fb6e90981c2d851021afeff1a5caf597c7f0ac318e19"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/bonum/tg_bonum-otf-#{version.csv.first.dots_to_underscores}#{"-#{version.csv.second}" if version.csv.second}.zip"
  name "TeX Gyre Bonum"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/bonum"

  livecheck do
    url :homepage
    regex(/href=.*?bonum-otf[._-]v?(\d+(?:[._]\d+)+)(?:-(\d+(?:[._]\d+)+))?\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        version = match[0].tr("_", ".")
        match[1].present? ? "#{version},#{match[1]}" : version
      end
    end
  end

  font "texgyrebonum-bold.otf"
  font "texgyrebonum-bolditalic.otf"
  font "texgyrebonum-italic.otf"
  font "texgyrebonum-regular.otf"

  # No zap stanza required
end
