cask "font-noto-serif-gujarati" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSerifGujarati-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Serif Gujarati"
  homepage "https://fonts.google.com/#serif-gujr"

  font "NotoSerifGujarati-Bold.ttf"
  font "NotoSerifGujarati-Regular.ttf"

  # No zap stanza required
end
