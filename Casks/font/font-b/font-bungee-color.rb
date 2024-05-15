cask "font-bungee-color" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bungeecolor/BungeeColor-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bungee Color"
  desc "Led by david jonathan ross, a type designer based in the usa"
  homepage "https://fonts.google.com/specimen/Bungee+Color"

  font "BungeeColor-Regular.ttf"

  # No zap stanza required
end
