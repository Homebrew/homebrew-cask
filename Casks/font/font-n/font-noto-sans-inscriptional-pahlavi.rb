cask "font-noto-sans-inscriptional-pahlavi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansInscriptionalPahlavi-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Inscriptional Pahlavi"
  homepage "https://fonts.google.com/#sans-phli"

  font "NotoSansInscriptionalPahlavi-Regular.ttf"

  # No zap stanza required
end
