cask "font-playwrite-ie-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteieguides/PlaywriteIEGuides-Regular.ttf"
  name "Playwrite IE Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteIEGuides-Regular.ttf"

  # No zap stanza required
end
