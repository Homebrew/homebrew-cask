cask "font-noto-serif-old-uyghur" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifolduyghur/NotoSerifOldUyghur-Regular.ttf"
  name "Noto Serif Old Uyghur"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Old+Uyghur"

  font "NotoSerifOldUyghur-Regular.ttf"

  # No zap stanza required
end
