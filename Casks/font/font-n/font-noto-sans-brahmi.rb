cask "font-noto-sans-brahmi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansBrahmi-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Brahmi"
  homepage "https://font.google.com"

  font "NotoSansBrahmi-Regular.ttf"

  # No zap stanza required
end
