cask "font-impact" do
  version :latest
  sha256 :no_check

  url "https://downloads.sourceforge.net/corefonts/impact32.exe"
  name "Impact"
  homepage "https://sourceforge.net/projects/corefonts/files/the%20fonts/final/"

  font "Impact.TTF"

  # No zap stanza required
end
