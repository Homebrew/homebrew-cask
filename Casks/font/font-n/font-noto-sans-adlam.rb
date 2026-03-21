cask "font-noto-sans-adlam" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansadlam/NotoSansAdlam%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Adlam"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Adlam"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Adlam",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansAdlam[wght].ttf"

  # No zap stanza required
end
