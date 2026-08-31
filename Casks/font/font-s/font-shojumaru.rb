cask "font-shojumaru" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shojumaru/Shojumaru-Regular.ttf"
  name "Shojumaru"
  homepage "https://fonts.google.com/specimen/Shojumaru"

  font "Shojumaru-Regular.ttf"

  # No zap stanza required
end
