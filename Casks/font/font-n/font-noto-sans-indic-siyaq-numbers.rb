cask "font-noto-sans-indic-siyaq-numbers" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansindicsiyaqnumbers/NotoSansIndicSiyaqNumbers-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Indic Siyaq Numbers"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Indic+Siyaq+Numbers"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Indic Siyaq Numbers",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansIndicSiyaqNumbers-Regular.ttf"

  # No zap stanza required
end
