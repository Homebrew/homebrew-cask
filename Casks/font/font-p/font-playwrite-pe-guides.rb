cask "font-playwrite-pe-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritepeguides/PlaywritePEGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite PE Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+PE+Guides"

  font "PlaywritePEGuides-Regular.ttf"

  # No zap stanza required
end
