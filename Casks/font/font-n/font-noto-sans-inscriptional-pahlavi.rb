cask "font-noto-sans-inscriptional-pahlavi" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansInscriptionalPahlavi-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Inscriptional Pahlavi"
  homepage "https://www.google.com/get/noto/#sans-phli"

  font "NotoSansInscriptionalPahlavi-Regular.ttf"

  # No zap stanza required
end
