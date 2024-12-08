cask "font-playwrite-id-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteidguides/PlaywriteIDGuides-Regular.ttf"
  name "Playwrite ID Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteIDGuides-Regular.ttf"

  # No zap stanza required
end
