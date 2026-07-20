cask "font-playwrite-nz-basic-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenzbasicguides/PlaywriteNZBasicGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NZ Basic Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+NZ+Basic+Guides"

  font "PlaywriteNZBasicGuides-Regular.ttf"

  # No zap stanza required
end
