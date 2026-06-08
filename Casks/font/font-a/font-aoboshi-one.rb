cask "font-aoboshi-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aoboshione/AoboshiOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aoboshi One"
  homepage "https://fonts.google.com/specimen/Aoboshi+One"

  font "AoboshiOne-Regular.ttf"

  # No zap stanza required
end
