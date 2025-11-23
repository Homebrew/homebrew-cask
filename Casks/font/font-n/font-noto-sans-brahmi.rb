cask "font-noto-sans-brahmi" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansBrahmi-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Brahmi"
  homepage "https://www.google.com/get/noto/#sans-brah"

  font "NotoSansBrahmi-Regular.ttf"

  # No zap stanza required
end
