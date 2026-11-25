cask "font-passero-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/passeroone/PasseroOne-Regular.ttf"
  name "Passero One"
  homepage "https://fonts.google.com/specimen/Passero+One"

  font "PasseroOne-Regular.ttf"

  zap :not_required
end
