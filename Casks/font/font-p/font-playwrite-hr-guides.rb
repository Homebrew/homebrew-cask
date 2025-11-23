cask "font-playwrite-hr-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehrguides/PlaywriteHRGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite HR Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+HR+Guides"

  font "PlaywriteHRGuides-Regular.ttf"

  # No zap stanza required
end
