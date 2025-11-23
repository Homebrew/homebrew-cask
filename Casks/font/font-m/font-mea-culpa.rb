cask "font-mea-culpa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meaculpa/MeaCulpa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mea Culpa"
  homepage "https://fonts.google.com/specimen/Mea+Culpa"

  font "MeaCulpa-Regular.ttf"

  # No zap stanza required
end
