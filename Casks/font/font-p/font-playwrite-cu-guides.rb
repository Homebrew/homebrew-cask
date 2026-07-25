cask "font-playwrite-cu-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecuguides/PlaywriteCUGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CU Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+CU+Guides"

  font "PlaywriteCUGuides-Regular.ttf"

  # No zap stanza required
end
