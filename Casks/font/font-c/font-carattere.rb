cask "font-carattere" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/carattere/Carattere-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Carattere"
  homepage "https://fonts.google.com/specimen/Carattere"

  font "Carattere-Regular.ttf"

  # No zap stanza required
end
