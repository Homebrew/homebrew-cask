cask "font-comic-sans-ms" do
  version :latest
  sha256 :no_check

  url "https://downloads.sourceforge.net/corefonts/comic32.exe"
  name "Comic Sans"
  homepage "https://sourceforge.net/projects/corefonts/files/the%20fonts/final/"

  font "Comic.TTF"
  font "Comicbd.TTF"

  # No zap stanza required
end
