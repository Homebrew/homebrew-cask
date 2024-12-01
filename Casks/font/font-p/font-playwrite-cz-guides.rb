cask "font-playwrite-cz-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteczguides/PlaywriteCZGuides-Regular.ttf"
  name "Playwrite CZ Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteCZGuides-Regular.ttf"

  # No zap stanza required
end
