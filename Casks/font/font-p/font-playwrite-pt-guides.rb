cask "font-playwrite-pt-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteptguides/PlaywritePTGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite PT Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+PT+Guides"

  font "PlaywritePTGuides-Regular.ttf"

  # No zap stanza required
end
