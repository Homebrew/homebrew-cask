cask "font-gowun-dodum" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gowundodum/GowunDodum-Regular.ttf"
  name "Gowun Dodum"
  homepage "https://fonts.google.com/specimen/Gowun+Dodum"

  font "GowunDodum-Regular.ttf"

  # No zap stanza required
end
