cask "font-noto-sans-inscriptional-parthian" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansInscriptionalParthian-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Inscriptional Parthian"
  homepage "https://www.google.com/get/noto/#sans-prti"

  font "NotoSansInscriptionalParthian-Regular.ttf"

  # No zap stanza required
end
