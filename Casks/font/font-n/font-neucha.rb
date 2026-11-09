cask "font-neucha" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/neucha/Neucha.ttf"
  name "Neucha"
  homepage "https://fonts.google.com/specimen/Neucha"

  font "Neucha.ttf"

  zap :not_required
end
