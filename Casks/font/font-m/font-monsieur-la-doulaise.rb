cask "font-monsieur-la-doulaise" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/monsieurladoulaise/MonsieurLaDoulaise-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Monsieur La Doulaise"
  homepage "https://fonts.google.com/specimen/Monsieur+La+Doulaise"

  font "MonsieurLaDoulaise-Regular.ttf"

  # No zap stanza required
end
