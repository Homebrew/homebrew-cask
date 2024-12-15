cask "font-playwrite-de-va-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedevaguides/PlaywriteDEVAGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE VA Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+VA+Guides"

  font "PlaywriteDEVAGuides-Regular.ttf"

  # No zap stanza required
end
