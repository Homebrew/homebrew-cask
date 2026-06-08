cask "font-signika-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/signikasc/SignikaSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Signika SC"
  homepage "https://fonts.google.com/specimen/Signika+SC"

  font "SignikaSC[wght].ttf"

  # No zap stanza required
end
