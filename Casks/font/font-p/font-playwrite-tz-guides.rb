cask "font-playwrite-tz-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritetzguides/PlaywriteTZGuides-Regular.ttf"
  name "Playwrite TZ Guides"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteTZGuides-Regular.ttf"

  # No zap stanza required
end
