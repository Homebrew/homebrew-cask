cask "font-noto-serif-gujarati" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifGujarati-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Serif Gujarati"
  homepage "https://www.google.com/get/noto/#serif-gujr"

  font "NotoSerifGujarati-Bold.ttf"
  font "NotoSerifGujarati-Regular.ttf"

  # No zap stanza required
end
