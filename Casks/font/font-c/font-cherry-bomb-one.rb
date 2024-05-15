cask "font-cherry-bomb-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cherrybombone/CherryBombOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cherry Bomb One"
  homepage "https://fonts.google.com/specimen/Cherry+Bomb+One"

  font "CherryBombOne-Regular.ttf"

  # No zap stanza required
end
