cask "font-smooch" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/smooch/Smooch-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Smooch"
  homepage "https://fonts.google.com/specimen/Smooch"

  font "Smooch-Regular.ttf"

  # No zap stanza required
end
