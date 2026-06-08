cask "font-tex-gyre-chorus" do
  version "2.609,31_03_2026"
  sha256 "4f00506e0b630b2f3b4c9d35f786c17de3cfb11d8265065b79aee2a3e354387b"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/chorus/tg_chorus-otf-#{version.csv.first.dots_to_underscores}#{"-#{version.csv.second}" if version.csv.second}.zip"
  name "TeX Gyre Chorus"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/chorus"

  livecheck do
    url :homepage
    regex(/href=.*?chorus-otf[._-]v?(\d+(?:[._]\d+)+)(?:-(\d+(?:[._]\d+)+))?\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        version = match[0].tr("_", ".")
        match[1].present? ? "#{version},#{match[1]}" : version
      end
    end
  end

  font "texgyrechorus-mediumitalic.otf"

  # No zap stanza required
end
