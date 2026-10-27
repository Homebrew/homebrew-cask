cask "font-denk-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/denkone/DenkOne-Regular.ttf"
  name "Denk One"
  homepage "https://fonts.google.com/specimen/Denk+One"

  font "DenkOne-Regular.ttf"

  zap :not_required
end
