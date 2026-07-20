cask "font-noto-sans-carian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscarian/NotoSansCarian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Carian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Carian"

  font "NotoSansCarian-Regular.ttf"

  # No zap stanza required
end
