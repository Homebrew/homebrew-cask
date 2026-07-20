cask "font-playwrite-mx-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritemxguides/PlaywriteMXGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite MX Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+MX+Guides"

  font "PlaywriteMXGuides-Regular.ttf"

  # No zap stanza required
end
