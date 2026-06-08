cask "font-nuosu-sil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nuosusil/NuosuSIL-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nuosu SIL"
  homepage "https://fonts.google.com/specimen/Nuosu+SIL"

  font "NuosuSIL-Regular.ttf"

  # No zap stanza required
end
