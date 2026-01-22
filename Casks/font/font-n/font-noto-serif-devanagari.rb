cask "font-noto-serif-devanagari" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSerifDevanagari-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Serif Devanagari"
  homepage "https://fonts.google.com/#serif-deva"

  font "NotoSerifDevanagari-Bold.ttf"
  font "NotoSerifDevanagari-Regular.ttf"

  # No zap stanza required
end
