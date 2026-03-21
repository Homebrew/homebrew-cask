cask "font-noto-sans-adlam-unjoined" do
  version "3.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansadlamunjoined/NotoSansAdlamUnjoined%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Adlam Unjoined"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Adlam+Unjoined"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Adlam Unjoined",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansAdlamUnjoined[wght].ttf"

  # No zap stanza required
end
