cask "font-tex-gyre-adventor" do
  version "2.609,31_03_2026"
  sha256 "4cfef1d3df1674d111081d7410fe393185aef719e5d8465314dece308836033e"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/adventor/tg_adventor-otf-#{version.csv.first.dots_to_underscores}#{"-#{version.csv.second}" if version.csv.second}.zip"
  name "TeX Gyre Adventor"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/adventor"

  livecheck do
    url :homepage
    regex(/href=.*?adventor-otf[._-]v?(\d+(?:[._]\d+)+)(?:-(\d+(?:[._]\d+)+))?\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        version = match[0].tr("_", ".")
        match[1].present? ? "#{version},#{match[1]}" : version
      end
    end
  end

  font "texgyreadventor-bold.otf"
  font "texgyreadventor-bolditalic.otf"
  font "texgyreadventor-italic.otf"
  font "texgyreadventor-regular.otf"

  # No zap stanza required
end
