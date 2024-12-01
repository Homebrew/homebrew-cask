cask "font-playwrite-no-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenoguides/PlaywriteNOGuides-Regular.ttf"
  name "Playwrite NO Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteNOGuides-Regular.ttf"

  # No zap stanza required
end
