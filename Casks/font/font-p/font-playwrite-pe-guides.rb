cask "font-playwrite-pe-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritepeguides/PlaywritePEGuides-Regular.ttf"
  name "Playwrite PE Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywritePEGuides-Regular.ttf"

  # No zap stanza required
end
