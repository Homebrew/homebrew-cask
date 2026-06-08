cask "font-tex-gyre-pagella" do
  version "2.609,31_03_2026"
  sha256 "1fa1284bf30aefa1885ec5ce6c26b24d160104b331b1978a85a2a8b3c781737d"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/pagella/tg_pagella-otf-#{version.csv.first.dots_to_underscores}#{"-#{version.csv.second}" if version.csv.second}.zip"
  name "TeX Gyre Pagella"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/pagella"

  livecheck do
    url :homepage
    regex(/href=.*?pagella-otf[._-]v?(\d+(?:[._]\d+)+)(?:-(\d+(?:[._]\d+)+))?\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        version = match[0].tr("_", ".")
        match[1].present? ? "#{version},#{match[1]}" : version
      end
    end
  end

  font "texgyrepagella-bold.otf"
  font "texgyrepagella-bolditalic.otf"
  font "texgyrepagella-italic.otf"
  font "texgyrepagella-regular.otf"

  # No zap stanza required
end
