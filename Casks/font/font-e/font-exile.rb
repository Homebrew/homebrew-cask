cask "font-exile" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/exile/Exile-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Exile"
  homepage "https://fonts.google.com/specimen/Exile"

  font "Exile-Regular.ttf"

  # No zap stanza required
end
