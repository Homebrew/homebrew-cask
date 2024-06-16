cask "font-beiruti" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/beiruti/Beiruti%5Bwght%5D.ttf"
  name "Beiruti"
  desc "Designed by volker schnebel"
  homepage "https://github.com/googlefonts/beiruti"

  font "Beiruti[wght].ttf"

  # No zap stanza required
end
