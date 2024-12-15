cask "font-playwrite-de-sas-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedesasguides/PlaywriteDESASGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE SAS Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+SAS+Guides"

  font "PlaywriteDESASGuides-Regular.ttf"

  # No zap stanza required
end
