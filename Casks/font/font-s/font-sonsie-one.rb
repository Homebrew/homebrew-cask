cask "font-sonsie-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sonsieone/SonsieOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sonsie One"
  homepage "https://fonts.google.com/specimen/Sonsie+One"

  font "SonsieOne-Regular.ttf"

  # No zap stanza required
end
