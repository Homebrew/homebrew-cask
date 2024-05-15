cask "font-encode-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/encodesans/EncodeSans%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Encode Sans"
  homepage "https://fonts.google.com/specimen/Encode+Sans"

  font "EncodeSans[wdth,wght].ttf"

  # No zap stanza required
end
