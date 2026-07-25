cask "font-noto-sans-cuneiform" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscuneiform/NotoSansCuneiform-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Cuneiform"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Cuneiform"

  font "NotoSansCuneiform-Regular.ttf"

  # No zap stanza required
end
