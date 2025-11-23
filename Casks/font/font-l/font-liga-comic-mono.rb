cask "font-liga-comic-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/wayou/comic-mono-font/archive/refs/heads/master.tar.gz"
  name "Liga Comic Mono"
  homepage "https://github.com/wayou/comic-mono-font"

  font "comic-mono-font-master/LigaComicMono.ttf"
  font "comic-mono-font-master/LigaComicMono-Bold.ttf"

  # No zap stanza required
end
