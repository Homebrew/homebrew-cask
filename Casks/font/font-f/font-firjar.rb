cask "font-firjar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/firjar/Firjar%5Bwdth%2Cwght%5D.ttf"
  name "Firjar"
  homepage "https://github.com/Mestaratype/Firjar"

  font "Firjar[wdth,wght].ttf"

  zap :not_required
end
