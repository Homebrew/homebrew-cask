cask "font-autour-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/autourone/AutourOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Autour One"
  homepage "https://fonts.google.com/specimen/Autour+One"

  font "AutourOne-Regular.ttf"

  # No zap stanza required
end
