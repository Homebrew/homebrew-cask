cask "font-noto-sans-sundanese" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssundanese/NotoSansSundanese%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sundanese"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sundanese"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Sundanese",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSundanese[wght].ttf"

  # No zap stanza required
end
