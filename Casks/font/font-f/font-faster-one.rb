cask "font-faster-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fasterone/FasterOne-Regular.ttf"
  name "Faster One"
  homepage "https://fonts.google.com/specimen/Faster+One"

  font "FasterOne-Regular.ttf"

  zap :not_required
end
