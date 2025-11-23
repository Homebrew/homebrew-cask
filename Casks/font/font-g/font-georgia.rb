cask "font-georgia" do
  version :latest
  sha256 :no_check

  url "https://downloads.sourceforge.net/corefonts/georgi32.exe"
  name "Georgia"
  homepage "https://sourceforge.net/projects/corefonts/files/the%20fonts/final/"

  font "Georgiaz.TTF"
  font "Georgiab.TTF"
  font "Georgiai.TTF"
  font "Georgia.TTF"

  # No zap stanza required
end
