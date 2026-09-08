cask "font-yusei-magic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yuseimagic/YuseiMagic-Regular.ttf"
  name "Yusei Magic"
  homepage "https://fonts.google.com/specimen/Yusei+Magic"

  font "YuseiMagic-Regular.ttf"

  # No zap stanza required
end
