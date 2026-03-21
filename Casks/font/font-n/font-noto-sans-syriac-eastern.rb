cask "font-noto-sans-syriac-eastern" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssyriaceastern/NotoSansSyriacEastern%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Syriac Eastern"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Syriac+Eastern"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Syriac Eastern",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSyriacEastern[wght].ttf"

  # No zap stanza required
end
