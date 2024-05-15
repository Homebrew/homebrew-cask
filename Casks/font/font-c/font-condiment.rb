cask "font-condiment" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/condiment/Condiment-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Condiment"
  homepage "https://fonts.google.com/specimen/Condiment"

  font "Condiment-Regular.ttf"

  # No zap stanza required
end
