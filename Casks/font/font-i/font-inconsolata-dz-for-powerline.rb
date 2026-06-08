cask "font-inconsolata-dz-for-powerline" do
  version :latest
  sha256 :no_check

  url "https://raw.github.com/powerline/fonts/master/InconsolataDz/Inconsolata-dz%20for%20Powerline.otf"
  name "Inconsolata-dz for Powerline"
  homepage "https://github.com/powerline/fonts/tree/master/InconsolataDz"

  font "Inconsolata-dz for Powerline.otf"

  # No zap stanza required
end
