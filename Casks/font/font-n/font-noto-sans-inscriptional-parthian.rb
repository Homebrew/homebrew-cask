cask "font-noto-sans-inscriptional-parthian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansinscriptionalparthian/NotoSansInscriptionalParthian-Regular.ttf"
  name "Noto Sans Inscriptional Parthian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Inscriptional+Parthian"

  font "NotoSansInscriptionalParthian-Regular.ttf"

  # No zap stanza required
end
