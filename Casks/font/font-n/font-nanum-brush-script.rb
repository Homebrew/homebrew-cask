cask "font-nanum-brush-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nanumbrushscript/NanumBrushScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nanum Brush Script"
  homepage "https://fonts.google.com/specimen/Nanum+Brush+Script"

  font "NanumBrushScript-Regular.ttf"

  # No zap stanza required
end
