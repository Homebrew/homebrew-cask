cask "font-liga-comic-mono-nerd-font" do
  version :latest
  sha256 :no_check

  url "https://github.com/wayou/comic-mono-font/archive/refs/heads/master.tar.gz"
  name "LigaComicMono Nerd Font"
  homepage "https://github.com/wayou/comic-mono-font"

  font "comic-mono-font-master/LigaComicMonoNerdFont-Regular.ttf"
  font "comic-mono-font-master/LigaComicMonoNerdFont-Bold.ttf"

  # No zap stanza required
end
