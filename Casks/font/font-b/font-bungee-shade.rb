cask "font-bungee-shade" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bungeeshade/BungeeShade-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bungee Shade"
  homepage "https://fonts.google.com/specimen/Bungee+Shade"

  font "BungeeShade-Regular.ttf"

  # No zap stanza required
end
