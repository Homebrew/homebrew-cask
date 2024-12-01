cask "font-playwrite-ro-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteroguides/PlaywriteROGuides-Regular.ttf"
  name "Playwrite RO Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteROGuides-Regular.ttf"

  # No zap stanza required
end
