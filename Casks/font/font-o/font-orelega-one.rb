cask "font-orelega-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/orelegaone/OrelegaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Orelega One"
  homepage "https://fonts.google.com/specimen/Orelega+One"

  font "OrelegaOne-Regular.ttf"

  # No zap stanza required
end
