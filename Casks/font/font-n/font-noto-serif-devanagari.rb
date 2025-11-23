cask "font-noto-serif-devanagari" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifDevanagari-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Serif Devanagari"
  homepage "https://www.google.com/get/noto/#serif-deva"

  font "NotoSerifDevanagari-Bold.ttf"
  font "NotoSerifDevanagari-Regular.ttf"

  # No zap stanza required
end
