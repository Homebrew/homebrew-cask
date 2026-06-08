cask "font-liberation-mono-for-powerline" do
  version :latest
  sha256 :no_check

  url "https://github.com/powerline/fonts.git",
      branch:    "master",
      only_path: "LiberationMono"
  name "Literation Mono for Powerline"
  homepage "https://github.com/powerline/fonts/tree/master/LiberationMono"

  font "Literation Mono Powerline Bold Italic.ttf"
  font "Literation Mono Powerline Bold.ttf"
  font "Literation Mono Powerline Italic.ttf"
  font "Literation Mono Powerline.ttf"

  # No zap stanza required
end
