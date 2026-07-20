cask "font-noto-sans-tamil-supplement" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstamilsupplement/NotoSansTamilSupplement-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tamil Supplement"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tamil+Supplement"

  font "NotoSansTamilSupplement-Regular.ttf"

  # No zap stanza required
end
