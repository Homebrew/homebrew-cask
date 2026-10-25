cask "font-agrave-pro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/agravepro/AgravePro%5Bwght%5D.ttf"
  name "Agrave Pro"
  homepage "https://github.com/daanjobsis/agrave-pro"

  font "AgravePro[wght].ttf"

  # No zap stanza required
end
