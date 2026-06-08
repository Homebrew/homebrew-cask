cask "font-noto-sans-medefaidrin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmedefaidrin/NotoSansMedefaidrin%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Medefaidrin"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Medefaidrin"

  font "NotoSansMedefaidrin[wght].ttf"

  # No zap stanza required
end
