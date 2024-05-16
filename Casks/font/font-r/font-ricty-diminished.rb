cask "font-ricty-diminished" do
  version "4.1.1"
  sha256 "09d6cf8eaf3402205dd8a0fa35469d41833b4e85bedddfac235255d78747766b"

  url "https://rictyfonts.github.io/files/ricty_diminished-#{version}.tar.gz"
  name "Ricty Diminished"
  homepage "https://rictyfonts.github.io/diminished"

  livecheck do
    url :homepage
    regex(%r{/ricty_diminished-(\d+(?:\.\d+)*)\.t})
  end

  font "RictyDiminished-Bold.ttf"
  font "RictyDiminished-BoldOblique.ttf"
  font "RictyDiminished-Oblique.ttf"
  font "RictyDiminished-Regular.ttf"
  font "RictyDiminishedDiscord-Bold.ttf"
  font "RictyDiminishedDiscord-BoldOblique.ttf"
  font "RictyDiminishedDiscord-Oblique.ttf"
  font "RictyDiminishedDiscord-Regular.ttf"

  # No zap stanza required
end
