cask "font-gabriela" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gabriela/Gabriela-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gabriela"
  homepage "https://fonts.google.com/specimen/Gabriela"

  font "Gabriela-Regular.ttf"

  # No zap stanza required
end
