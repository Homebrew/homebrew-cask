cask "font-noto-sans-inscriptional-parthian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansInscriptionalParthian-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Inscriptional Parthian"
  homepage "https://fonts.google.com/#sans-prti"

  font "NotoSansInscriptionalParthian-Regular.ttf"

  # No zap stanza required
end
