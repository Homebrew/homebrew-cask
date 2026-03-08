cask "font-noto-sans-ugaritic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansugaritic/NotoSansUgaritic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Ugaritic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Ugaritic"

  font "NotoSansUgaritic-Regular.ttf"

  # No zap stanza required
end
