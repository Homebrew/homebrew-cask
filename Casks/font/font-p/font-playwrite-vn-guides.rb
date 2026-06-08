cask "font-playwrite-vn-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritevnguides/PlaywriteVNGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite VN Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+VN+Guides"

  font "PlaywriteVNGuides-Regular.ttf"

  # No zap stanza required
end
