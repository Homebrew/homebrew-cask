cask "font-noto-sans-inscriptional-pahlavi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansinscriptionalpahlavi/NotoSansInscriptionalPahlavi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Inscriptional Pahlavi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Inscriptional+Pahlavi"

  font "NotoSansInscriptionalPahlavi-Regular.ttf"

  # No zap stanza required
end
