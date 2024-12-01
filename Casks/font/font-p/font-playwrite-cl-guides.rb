cask "font-playwrite-cl-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteclguides/PlaywriteCLGuides-Regular.ttf"
  name "Playwrite CL Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteCLGuides-Regular.ttf"

  # No zap stanza required
end
