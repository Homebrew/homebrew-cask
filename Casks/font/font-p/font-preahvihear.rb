cask "font-preahvihear" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/preahvihear/Preahvihear-Regular.ttf"
  name "Preahvihear"
  homepage "https://fonts.google.com/specimen/Preahvihear"

  font "Preahvihear-Regular.ttf"

  zap :not_required
end
