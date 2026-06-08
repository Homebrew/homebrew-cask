cask "font-kode-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kodemono/KodeMono%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kode Mono"
  homepage "https://fonts.google.com/specimen/Kode+Mono"

  font "KodeMono[wght].ttf"

  # No zap stanza required
end
