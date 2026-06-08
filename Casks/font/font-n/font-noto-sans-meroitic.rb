cask "font-noto-sans-meroitic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmeroitic/NotoSansMeroitic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Meroitic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Meroitic"

  font "NotoSansMeroitic-Regular.ttf"

  # No zap stanza required
end
