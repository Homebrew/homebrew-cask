cask "font-frijole" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/frijole/Frijole-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Frijole"
  homepage "https://fonts.google.com/specimen/Frijole"

  font "Frijole-Regular.ttf"

  # No zap stanza required
end
