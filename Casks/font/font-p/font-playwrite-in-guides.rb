cask "font-playwrite-in-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteinguides/PlaywriteINGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IN Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+IN+Guides"

  font "PlaywriteINGuides-Regular.ttf"

  # No zap stanza required
end
