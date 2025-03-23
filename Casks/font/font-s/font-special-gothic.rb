cask "font-special-gothic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/specialgothic/SpecialGothic-Regular.ttf"
  name "Special Gothic"
  homepage "https://github.com/AlistairMcCready/Special-Gothic"

  font "SpecialGothic-Regular.ttf"

  # No zap stanza required
end
