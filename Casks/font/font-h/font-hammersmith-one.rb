cask "font-hammersmith-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hammersmithone/HammersmithOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hammersmith One"
  homepage "https://fonts.google.com/specimen/Hammersmith+One"

  font "HammersmithOne-Regular.ttf"

  # No zap stanza required
end
