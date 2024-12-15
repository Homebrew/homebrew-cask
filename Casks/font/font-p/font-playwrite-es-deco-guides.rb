cask "font-playwrite-es-deco-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteesdecoguides/PlaywriteESDecoGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ES Deco Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+ES+Deco+Guides"

  font "PlaywriteESDecoGuides-Regular.ttf"

  # No zap stanza required
end
