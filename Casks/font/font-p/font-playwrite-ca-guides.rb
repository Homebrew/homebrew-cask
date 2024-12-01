cask "font-playwrite-ca-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecaguides/PlaywriteCAGuides-Regular.ttf"
  name "Playwrite CA Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteCAGuides-Regular.ttf"

  # No zap stanza required
end
