cask "font-love-ya-like-a-sister" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/loveyalikeasister/LoveYaLikeASister.ttf",
      verified: "github.com/google/fonts/"
  name "Love Ya Like A Sister"
  homepage "https://fonts.google.com/specimen/Love+Ya+Like+A+Sister"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Love Ya Like A Sister",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LoveYaLikeASister.ttf"

  # No zap stanza required
end
