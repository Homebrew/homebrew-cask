cask "font-arial-black" do
  version :latest
  sha256 :no_check

  url "https://downloads.sourceforge.net/corefonts/arialb32.exe"
  name "Arial Black"
  homepage "https://sourceforge.net/projects/corefonts/files/the%20fonts/final/"

  font "AriBlk.TTF"

  # No zap stanza required
end
