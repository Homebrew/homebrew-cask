cask "font-tex-gyre-pagella" do
  version "2.501"
  sha256 "e16078d19860d68a54bcaedc00e35c2a81b396cdc36842700f1d556f89cf8ef2"

  url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/pagella/qpl#{version.dots_to_underscores}otf.zip"
  name "TeX Gyre Pagella"
  homepage "https://www.gust.org.pl/projects/e-foundry/tex-gyre/pagella"

  livecheck do
    url "https://www.gust.org.pl/projects/e-foundry/tex-gyre/whole"
    regex(%r{Pagella</a>,\sver\.\s(\d+(?:\.\d+)+)}i)
  end

  font "qpl#{version.dots_to_underscores}otf/texgyrepagella-bold.otf"
  font "qpl#{version.dots_to_underscores}otf/texgyrepagella-bolditalic.otf"
  font "qpl#{version.dots_to_underscores}otf/texgyrepagella-italic.otf"
  font "qpl#{version.dots_to_underscores}otf/texgyrepagella-regular.otf"

  # No zap stanza required
end
