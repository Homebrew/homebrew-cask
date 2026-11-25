cask "font-madhuban" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/madhuban/Madhuban%5Bwght%5D.ttf"
  name "Madhuban"
  homepage "https://github.com/magictype/Madhuban"

  font "Madhuban[wght].ttf"

  zap :not_required
end
