cask "font-noto-sans-syriac" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssyriac/NotoSansSyriac%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Syriac"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Syriac"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Syriac",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSyriac[wght].ttf"

  # No zap stanza required
end
