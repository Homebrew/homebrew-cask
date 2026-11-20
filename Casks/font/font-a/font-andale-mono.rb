cask "font-andale-mono" do
  version :latest
  sha256 :no_check

  url "https://downloads.sourceforge.net/corefonts/andale32.exe"
  name "Andale Mono"
  homepage "https://sourceforge.net/projects/corefonts/files/the%20fonts/final/"

  font "AndaleMo.TTF"

  zap :not_required
end
