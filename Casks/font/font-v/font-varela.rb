cask "font-varela" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/varela/Varela-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Varela"
  homepage "https://fonts.google.com/specimen/Varela"

  font "Varela-Regular.ttf"

  # No zap stanza required
end
