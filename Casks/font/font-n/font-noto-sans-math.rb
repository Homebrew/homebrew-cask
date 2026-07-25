cask "font-noto-sans-math" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmath/NotoSansMath-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Math"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Math"

  font "NotoSansMath-Regular.ttf"

  # No zap stanza required
end
