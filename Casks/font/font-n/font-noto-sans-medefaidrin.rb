cask "font-noto-sans-medefaidrin" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmedefaidrin/NotoSansMedefaidrin%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Medefaidrin"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Medefaidrin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Medefaidrin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansMedefaidrin[wght].ttf"

  # No zap stanza required
end
