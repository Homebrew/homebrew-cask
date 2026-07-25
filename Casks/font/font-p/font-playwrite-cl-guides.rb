cask "font-playwrite-cl-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteclguides/PlaywriteCLGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CL Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+CL+Guides"

  font "PlaywriteCLGuides-Regular.ttf"

  # No zap stanza required
end
