cask "font-noto-sans-tai-le" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstaile/NotoSansTaiLe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tai Le"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tai+Le"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Tai Le",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTaiLe-Regular.ttf"

  # No zap stanza required
end
