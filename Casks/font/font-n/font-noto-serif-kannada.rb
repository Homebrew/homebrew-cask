cask "font-noto-serif-kannada" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifKannada-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Serif Kannada"
  homepage "https://www.google.com/get/noto/#serif-knda"

  font "NotoSerifKannada-Bold.ttf"
  font "NotoSerifKannada-Regular.ttf"

  # No zap stanza required
end
