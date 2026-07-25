cask "font-playwrite-hr-lijeva-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehrlijevaguides/PlaywriteHRLijevaGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite HR Lijeva Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+HR+Lijeva+Guides"

  font "PlaywriteHRLijevaGuides-Regular.ttf"

  # No zap stanza required
end
