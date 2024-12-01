cask "font-playwrite-nz-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenzguides/PlaywriteNZGuides-Regular.ttf"
  name "Playwrite NZ Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteNZGuides-Regular.ttf"

  # No zap stanza required
end
