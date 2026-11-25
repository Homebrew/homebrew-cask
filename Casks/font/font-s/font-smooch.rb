cask "font-smooch" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/smooch/Smooch-Regular.ttf"
  name "Smooch"
  homepage "https://fonts.google.com/specimen/Smooch"

  font "Smooch-Regular.ttf"

  zap :not_required
end
