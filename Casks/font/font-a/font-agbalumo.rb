cask "font-agbalumo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/agbalumo/Agbalumo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Agbalumo"
  homepage "https://fonts.google.com/specimen/Agbalumo"

  font "Agbalumo-Regular.ttf"

  # No zap stanza required
end
