cask "font-trebuchet-ms" do
  version :latest
  sha256 :no_check

  url "https://downloads.sourceforge.net/corefonts/trebuc32.exe"
  name "Trebuchet MS"
  homepage "https://sourceforge.net/projects/corefonts/files/the%20fonts/final/"

  font "trebuc.ttf"
  font "Trebucbd.ttf"
  font "trebucbi.ttf"
  font "trebucit.ttf"

  # No zap stanza required
end
