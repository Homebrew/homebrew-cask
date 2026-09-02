cask "font-tex-gyre-heros" do
  version "2.609,31_03_2026"
  sha256 "a5803bb6211202b0e52447bbcbd41a209716b0952224c1116a28b6d342225abe"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/heros/tg_heros-otf-#{version.csv.first.dots_to_underscores}#{"-#{version.csv.second}" if version.csv.second}.zip"
  name "TeX Gyre Heros"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/heros"

  livecheck do
    url :homepage
    regex(/href=.*?heros-otf[._-]v?(\d+(?:[._]\d+)+)(?:-(\d+(?:[._]\d+)+))?\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        version = match[0].tr("_", ".")
        match[1].present? ? "#{version},#{match[1]}" : version
      end
    end
  end

  font "texgyreheros-bold.otf"
  font "texgyreheros-bolditalic.otf"
  font "texgyreheros-italic.otf"
  font "texgyreheros-regular.otf"
  font "texgyreheroscn-bold.otf"
  font "texgyreheroscn-bolditalic.otf"
  font "texgyreheroscn-italic.otf"
  font "texgyreheroscn-regular.otf"

  # No zap stanza required
end
