cask "font-covered-by-your-grace" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/coveredbyyourgrace/CoveredByYourGrace.ttf",
      verified: "github.com/google/fonts/"
  name "Covered By Your Grace"
  homepage "https://fonts.google.com/specimen/Covered+By+Your+Grace"

  font "CoveredByYourGrace.ttf"

  # No zap stanza required
end
