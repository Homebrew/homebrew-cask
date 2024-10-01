cask "font-bungee-tint" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bungeetint/BungeeTint-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bungee Tint"
  homepage "https://fonts.google.com/specimen/Bungee+Tint"

  font "BungeeTint-Regular.ttf"

  # No zap stanza required
end
