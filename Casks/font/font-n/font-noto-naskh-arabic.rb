cask "font-noto-naskh-arabic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoNaskhArabic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Naskh Arabic"
  homepage "https://font.google.com"

  font "NotoNaskhArabic-Bold.ttf"
  font "NotoNaskhArabic-Regular.ttf"

  # No zap stanza required
end
