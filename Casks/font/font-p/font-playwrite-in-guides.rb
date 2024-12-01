cask "font-playwrite-in-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteinguides/PlaywriteINGuides-Regular.ttf"
  name "Playwrite IN Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteINGuides-Regular.ttf"

  # No zap stanza required
end
