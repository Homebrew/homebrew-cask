cask "font-playwrite-pt-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteptguides/PlaywritePTGuides-Regular.ttf"
  name "Playwrite PT Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywritePTGuides-Regular.ttf"

  # No zap stanza required
end
