cask "font-noto-sans-warang-citi" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanswarangciti/NotoSansWarangCiti-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Warang Citi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Warang+Citi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Warang Citi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansWarangCiti-Regular.ttf"

  # No zap stanza required
end
