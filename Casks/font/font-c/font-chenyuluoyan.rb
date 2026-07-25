cask "font-chenyuluoyan" do
  version :latest
  sha256 :no_check

  url "https://github.com/Chenyu-otf/chenyuluoyan_thin/archive/refs/heads/main.tar.gz"
  name "Chenyuluoyan"
  name "辰宇落雁體"
  homepage "https://github.com/Chenyu-otf/chenyuluoyan_thin"

  font "chenyuluoyan_thin-main/ChenYuluoyan-Thin-Monospaced.ttf"
  font "chenyuluoyan_thin-main/ChenYuluoyan-2.0-Thin.ttf"

  # No zap stanza required
end
