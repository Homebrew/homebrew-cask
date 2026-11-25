cask "font-bbh-bartle" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhbartle/BBHBartle-Regular.ttf"
  name "BBH Bartle"
  homepage "https://fonts.google.com/specimen/BBH+Bartle"

  font "BBHBartle-Regular.ttf"

  zap :not_required
end
