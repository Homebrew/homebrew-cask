cask "font-cagliostro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cagliostro/Cagliostro-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cagliostro"
  homepage "https://fonts.google.com/specimen/Cagliostro"

  font "Cagliostro-Regular.ttf"

  # No zap stanza required
end
