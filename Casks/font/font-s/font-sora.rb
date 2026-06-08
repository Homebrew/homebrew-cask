cask "font-sora" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sora/Sora%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Sora"
  homepage "https://fonts.google.com/specimen/Sora"

  font "Sora[wght].ttf"

  # No zap stanza required
end
