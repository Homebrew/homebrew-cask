cask "font-xkcd-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/ipython/xkcd-font/raw/master/xkcd-script/font/xkcd-script.ttf"
  name "xkcd-script"
  homepage "https://github.com/ipython/xkcd-font"

  font "xkcd-script.ttf"

  # No zap stanza required
end
