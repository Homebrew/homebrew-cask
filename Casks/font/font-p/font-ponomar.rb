cask "font-ponomar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ponomar/Ponomar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ponomar"
  homepage "https://fonts.google.com/specimen/Ponomar"

  font "Ponomar-Regular.ttf"

  # No zap stanza required
end
