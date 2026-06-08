cask "font-playwrite-nl-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenlguides/PlaywriteNLGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NL Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+NL+Guides"

  font "PlaywriteNLGuides-Regular.ttf"

  # No zap stanza required
end
