cask "font-playwrite-nz-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenzguides/PlaywriteNZGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NZ Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+NZ+Guides"

  font "PlaywriteNZGuides-Regular.ttf"

  # No zap stanza required
end
