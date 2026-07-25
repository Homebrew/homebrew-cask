cask "font-love-ya-like-a-sister" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/loveyalikeasister/LoveYaLikeASister.ttf",
      verified: "github.com/google/fonts/"
  name "Love Ya Like A Sister"
  homepage "https://fonts.google.com/specimen/Love+Ya+Like+A+Sister"

  font "LoveYaLikeASister.ttf"

  # No zap stanza required
end
