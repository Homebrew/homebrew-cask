cask "font-emblema-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/emblemaone/EmblemaOne-Regular.ttf"
  name "Emblema One"
  homepage "https://fonts.google.com/specimen/Emblema+One"

  font "EmblemaOne-Regular.ttf"

  zap :not_required
end
