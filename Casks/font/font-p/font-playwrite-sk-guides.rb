cask "font-playwrite-sk-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteskguides/PlaywriteSKGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite SK Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+SK+Guides"

  font "PlaywriteSKGuides-Regular.ttf"

  # No zap stanza required
end
