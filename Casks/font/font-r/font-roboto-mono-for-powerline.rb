cask "font-roboto-mono-for-powerline" do
  version :latest
  sha256 :no_check

  url "https://github.com/powerline/fonts.git",
      branch:    "master",
      only_path: "RobotoMono"
  name "Roboto Mono for Powerline"
  homepage "https://github.com/powerline/fonts/tree/master/RobotoMono"

  font "Roboto Mono Bold Italic for Powerline.ttf"
  font "Roboto Mono Bold for Powerline.ttf"
  font "Roboto Mono Italic for Powerline.ttf"
  font "Roboto Mono Light Italic for Powerline.ttf"
  font "Roboto Mono Light for Powerline.ttf"
  font "Roboto Mono Medium Italic for Powerline.ttf"
  font "Roboto Mono Medium for Powerline.ttf"
  font "Roboto Mono Thin Italic for Powerline.ttf"
  font "Roboto Mono Thin for Powerline.ttf"
  font "Roboto Mono for Powerline.ttf"

  # No zap stanza required
end
