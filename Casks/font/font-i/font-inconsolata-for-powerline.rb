cask "font-inconsolata-for-powerline" do
  version :latest
  sha256 :no_check

  url "https://github.com/powerline/fonts/raw/master/Inconsolata/Inconsolata%20for%20Powerline.otf"
  name "Inconsolata for Powerline"
  homepage "https://github.com/powerline/fonts/tree/master/Inconsolata"

  font "Inconsolata for Powerline.otf"

  zap :not_required
end
