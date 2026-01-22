cask "font-noto-serif-kannada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSerifKannada-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Serif Kannada"
  homepage "https://fonts.google.com/#serif-knda"

  font "NotoSerifKannada-Bold.ttf"
  font "NotoSerifKannada-Regular.ttf"

  # No zap stanza required
end
