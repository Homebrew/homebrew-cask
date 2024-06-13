cask "font-noto-sans-cypro-minoan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscyprominoan/NotoSansCyproMinoan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Cypro Minoan"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Cypro+Minoan"

  font "NotoSansCyproMinoan-Regular.ttf"

  # No zap stanza required
end
