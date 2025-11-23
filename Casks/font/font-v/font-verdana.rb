cask "font-verdana" do
  version :latest
  sha256 :no_check

  url "https://downloads.sourceforge.net/corefonts/verdan32.exe"
  name "Verdana"
  homepage "https://sourceforge.net/projects/corefonts/files/the%20fonts/final/"

  font "Verdana.TTF"
  font "Verdanab.TTF"
  font "Verdanai.TTF"
  font "Verdanaz.TTF"

  # No zap stanza required
end
