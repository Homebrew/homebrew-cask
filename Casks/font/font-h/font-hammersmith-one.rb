cask "font-hammersmith-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hammersmithone/HammersmithOne-Regular.ttf"
  name "Hammersmith One"
  homepage "https://fonts.google.com/specimen/Hammersmith+One"

  font "HammersmithOne-Regular.ttf"

  zap :not_required
end
