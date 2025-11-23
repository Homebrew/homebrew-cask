cask "font-playwrite-id-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteidguides/PlaywriteIDGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ID Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+ID+Guides"

  font "PlaywriteIDGuides-Regular.ttf"

  # No zap stanza required
end
