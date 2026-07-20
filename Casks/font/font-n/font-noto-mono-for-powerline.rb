cask "font-noto-mono-for-powerline" do
  version :latest
  sha256 :no_check

  url "https://github.com/powerline/fonts.git",
      branch:    "master",
      only_path: "NotoMono"
  name "Noto Mono for Powerline"
  homepage "https://github.com/powerline/fonts/tree/master/NotoMono"

  font "Noto Mono for Powerline.ttf"

  # No zap stanza required
end
