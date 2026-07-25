cask "font-sen" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sen/Sen%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Sen"
  homepage "https://fonts.google.com/specimen/Sen"

  font "Sen[wght].ttf"

  # No zap stanza required
end
