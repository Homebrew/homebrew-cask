cask "font-viaoda-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/viaodalibre/ViaodaLibre-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Viaoda Libre"
  homepage "https://fonts.google.com/specimen/Viaoda+Libre"

  font "ViaodaLibre-Regular.ttf"

  # No zap stanza required
end
