cask "font-chewy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/chewy/Chewy-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chewy"
  desc "Sealed for freshness in an easy- open package"
  homepage "https://fonts.google.com/specimen/Chewy"

  font "Chewy-Regular.ttf"

  # No zap stanza required
end
