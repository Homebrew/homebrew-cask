cask "font-xkcd" do
  version :latest
  sha256 :no_check

  url "https://github.com/ipython/xkcd-font/raw/master/xkcd/build/xkcd.otf"
  name "xkcd"
  homepage "https://github.com/ipython/xkcd-font"

  font "xkcd.otf"

  zap :not_required
end
