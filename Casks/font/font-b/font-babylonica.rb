cask "font-babylonica" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/babylonica/Babylonica-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Babylonica"
  desc "Interrupted by upright or back-slanted forms giving it an interrupted stress"
  homepage "https://fonts.google.com/specimen/Babylonica"

  font "Babylonica-Regular.ttf"

  # No zap stanza required
end
