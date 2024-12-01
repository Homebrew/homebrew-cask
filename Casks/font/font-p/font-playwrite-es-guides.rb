cask "font-playwrite-es-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteesguides/PlaywriteESGuides-Regular.ttf"
  name "Playwrite ES Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteESGuides-Regular.ttf"

  # No zap stanza required
end
