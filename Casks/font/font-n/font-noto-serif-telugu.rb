cask "font-noto-serif-telugu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftelugu/NotoSerifTelugu%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Telugu"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Telugu"

  font "NotoSerifTelugu[wght].ttf"

  # No zap stanza required
end
