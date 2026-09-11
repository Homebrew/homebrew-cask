cask "font-arial" do
  version :latest
  sha256 :no_check

  url "https://downloads.sourceforge.net/corefonts/arial32.exe"
  name "Arial"
  homepage "https://sourceforge.net/projects/corefonts/files/the%20fonts/final/"

  font "Arial.TTF"
  font "Arialbd.TTF"
  font "Arialbi.TTF"
  font "Ariali.TTF"

  # No zap stanza required
end
