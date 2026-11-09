cask "font-ruslan-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ruslandisplay/RuslanDisplay-Regular.ttf"
  name "Ruslan Display"
  homepage "https://fonts.google.com/specimen/Ruslan+Display"

  font "RuslanDisplay-Regular.ttf"

  zap :not_required
end
