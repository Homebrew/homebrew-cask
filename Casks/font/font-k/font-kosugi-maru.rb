cask "font-kosugi-maru" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/kosugimaru/KosugiMaru-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kosugi Maru"
  homepage "https://fonts.google.com/specimen/Kosugi+Maru"

  font "KosugiMaru-Regular.ttf"

  # No zap stanza required
end
