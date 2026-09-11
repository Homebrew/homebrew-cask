cask "font-phudu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/phudu/Phudu%5Bwght%5D.ttf"
  name "Phudu"
  homepage "https://fonts.google.com/specimen/Phudu"

  font "Phudu[wght].ttf"

  # No zap stanza required
end
