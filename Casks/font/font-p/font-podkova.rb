cask "font-podkova" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/podkova/Podkova%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Podkova"
  homepage "https://fonts.google.com/specimen/Podkova"

  font "Podkova[wght].ttf"

  # No zap stanza required
end
