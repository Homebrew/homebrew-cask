cask "font-noto-serif-malayalam" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifMalayalam-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Serif Malayalam"
  homepage "https://www.google.com/get/noto/#serif-mlym"

  font "NotoSerifMalayalam-Bold.ttf"
  font "NotoSerifMalayalam-Regular.ttf"

  # No zap stanza required
end
