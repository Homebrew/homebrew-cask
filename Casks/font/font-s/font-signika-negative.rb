cask "font-signika-negative" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/signikanegative/SignikaNegative%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Signika Negative"
  homepage "https://fonts.google.com/specimen/Signika+Negative"

  font "SignikaNegative[wght].ttf"

  # No zap stanza required
end
