cask "font-boldonse" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/boldonse/Boldonse-Regular.ttf"
  name "Boldonse"
  homepage "https://fonts.google.com/specimen/Boldonse"

  font "Boldonse-Regular.ttf"

  zap :not_required
end
