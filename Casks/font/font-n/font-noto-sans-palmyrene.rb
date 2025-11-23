cask "font-noto-sans-palmyrene" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanspalmyrene/NotoSansPalmyrene-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Palmyrene"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Palmyrene"

  font "NotoSansPalmyrene-Regular.ttf"

  # No zap stanza required
end
