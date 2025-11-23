cask "font-comic-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/dtinth/comic-mono-font/archive/refs/heads/master.tar.gz",
      verified: "github.com/dtinth/comic-mono-font/"
  name "Comic Mono"
  homepage "https://dtinth.github.io/comic-mono-font/"

  font "comic-mono-font-master/ComicMono.ttf"
  font "comic-mono-font-master/ComicMono-Bold.ttf"

  # No zap stanza required
end
