cask "font-bree-serif" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/breeserif/BreeSerif-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bree Serif"
  homepage "https://fonts.google.com/specimen/Bree+Serif"

  font "BreeSerif-Regular.ttf"

  # No zap stanza required
end
