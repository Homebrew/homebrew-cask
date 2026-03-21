cask "font-noto-sans-tamil-supplement" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstamilsupplement/NotoSansTamilSupplement-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tamil Supplement"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tamil+Supplement"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Tamil Supplement",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTamilSupplement-Regular.ttf"

  # No zap stanza required
end
