cask "font-playwrite-tz-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritetzguides/PlaywriteTZGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite TZ Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+TZ+Guides"

  font "PlaywriteTZGuides-Regular.ttf"

  # No zap stanza required
end
