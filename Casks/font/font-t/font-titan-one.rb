cask "font-titan-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/titanone/TitanOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Titan One"
  homepage "https://fonts.google.com/specimen/Titan+One"

  font "TitanOne-Regular.ttf"

  # No zap stanza required
end
