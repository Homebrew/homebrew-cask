cask "font-dejavu-sans-mono-for-powerline" do
  version :latest
  sha256 :no_check

  url "https://github.com/powerline/fonts.git",
      branch:    "master",
      only_path: "DejaVuSansMono"
  name "DejaVu Sans Mono for Powerline"
  homepage "https://github.com/powerline/fonts/tree/master/DejaVuSansMono"

  font "DejaVu Sans Mono for Powerline.ttf"
  font "DejaVu Sans Mono Bold for Powerline.ttf"
  font "DejaVu Sans Mono Oblique for Powerline.ttf"
  font "DejaVu Sans Mono Bold Oblique for Powerline.ttf"

  # No zap stanza required
end
