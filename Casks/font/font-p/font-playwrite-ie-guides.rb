cask "font-playwrite-ie-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteieguides/PlaywriteIEGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IE Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+IE+Guides"

  font "PlaywriteIEGuides-Regular.ttf"

  # No zap stanza required
end
