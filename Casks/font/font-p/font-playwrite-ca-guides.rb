cask "font-playwrite-ca-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecaguides/PlaywriteCAGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CA Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+CA+Guides"

  font "PlaywriteCAGuides-Regular.ttf"

  # No zap stanza required
end
