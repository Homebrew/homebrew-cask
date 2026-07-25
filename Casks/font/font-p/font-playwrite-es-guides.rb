cask "font-playwrite-es-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteesguides/PlaywriteESGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ES Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+ES+Guides"

  font "PlaywriteESGuides-Regular.ttf"

  # No zap stanza required
end
