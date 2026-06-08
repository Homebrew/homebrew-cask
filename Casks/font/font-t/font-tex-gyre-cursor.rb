cask "font-tex-gyre-cursor" do
  version "2.609,31_03_2026"
  sha256 "68b86309e9c12cdd822c99e1cce8eba25b8be3cea3a49902a453351b5b6a83da"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/cursor/tg_cursor-otf-#{version.csv.first.dots_to_underscores}#{"-#{version.csv.second}" if version.csv.second}.zip"
  name "TeX Gyre Cursor"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/cursor"

  livecheck do
    url :homepage
    regex(/href=.*?cursor-otf[._-]v?(\d+(?:[._]\d+)+)(?:-(\d+(?:[._]\d+)+))?\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        version = match[0].tr("_", ".")
        match[1].present? ? "#{version},#{match[1]}" : version
      end
    end
  end

  font "texgyrecursor-bold.otf"
  font "texgyrecursor-bolditalic.otf"
  font "texgyrecursor-italic.otf"
  font "texgyrecursor-regular.otf"

  # No zap stanza required
end
