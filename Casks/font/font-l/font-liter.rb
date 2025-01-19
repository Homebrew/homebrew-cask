cask "font-liter" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/liter/Liter-Regular.ttf"
  name "Liter"
  homepage "https://github.com/skugiz/liter"

  font "Liter-Regular.ttf"

  # No zap stanza required
end
