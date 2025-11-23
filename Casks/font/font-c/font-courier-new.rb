cask "font-courier-new" do
  version :latest
  sha256 :no_check

  url "https://downloads.sourceforge.net/corefonts/courie32.exe"
  name "Courier New"
  homepage "https://sourceforge.net/projects/corefonts/files/the%20fonts/final/"

  font "cour.ttf"
  font "courbd.ttf"
  font "courbi.ttf"
  font "couri.ttf"

  # No zap stanza required
end
