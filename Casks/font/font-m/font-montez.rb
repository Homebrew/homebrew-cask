cask "font-montez" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/montez/Montez-Regular.ttf"
  name "Montez"
  homepage "https://fonts.google.com/specimen/Montez"

  font "Montez-Regular.ttf"

  zap :not_required
end
