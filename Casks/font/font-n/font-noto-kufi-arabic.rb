cask "font-noto-kufi-arabic" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoKufiArabic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Kufi Arabic"
  homepage "https://www.google.com/get/noto/#kufi-arab"

  font "NotoKufiArabic-Bold.ttf"
  font "NotoKufiArabic-Regular.ttf"

  # No zap stanza required
end
