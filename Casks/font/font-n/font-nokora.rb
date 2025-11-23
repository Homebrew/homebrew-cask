cask "font-nokora" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nokora/Nokora%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Nokora"
  homepage "https://fonts.google.com/specimen/Nokora"

  font "Nokora[wght].ttf"

  # No zap stanza required
end
