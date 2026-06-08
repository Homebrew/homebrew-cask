cask "font-inconsolata-for-powerline-bold" do
  version :latest
  sha256 :no_check

  url "https://github.com/powerline/fonts/raw/master/Inconsolata/Inconsolata%20Bold%20for%20Powerline.ttf"
  name "Inconsolata Bold for Powerline"
  homepage "https://github.com/powerline/fonts/tree/master/Inconsolata"

  font "Inconsolata Bold for Powerline.ttf"

  # No zap stanza required
end
