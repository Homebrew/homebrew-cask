cask "font-noto-sans-gujarati" do
  version "2.106"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgujarati/NotoSansGujarati%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Gujarati"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Gujarati"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Gujarati",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansGujarati[wdth,wght].ttf"

  # No zap stanza required
end
