cask "font-bungee-hairline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bungeehairline/BungeeHairline-Regular.ttf"
  name "Bungee Hairline"
  homepage "https://fonts.google.com/specimen/Bungee+Hairline"

  font "BungeeHairline-Regular.ttf"

  zap :not_required
end
