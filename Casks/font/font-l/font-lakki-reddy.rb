cask "font-lakki-reddy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lakkireddy/LakkiReddy-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lakki Reddy"
  homepage "https://fonts.google.com/specimen/Lakki+Reddy"

  font "LakkiReddy-Regular.ttf"

  # No zap stanza required
end
