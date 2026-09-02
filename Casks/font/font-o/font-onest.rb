cask "font-onest" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/onest/Onest%5Bwght%5D.ttf"
  name "Onest"
  homepage "https://fonts.google.com/specimen/Onest"

  font "Onest[wght].ttf"

  # No zap stanza required
end
