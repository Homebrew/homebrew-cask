cask "font-adobe-blank" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/adobeblank/AdobeBlank-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Adobe Blank"
  homepage "https://fonts.google.com/specimen/Adobe+Blank"

  font "AdobeBlank-Regular.ttf"

  # No zap stanza required
end
