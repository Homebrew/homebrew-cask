cask "font-blaka" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blaka/Blaka-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Blaka"
  desc "Currently limited to few applications like google chrome (version 98 or later)"
  homepage "https://fonts.google.com/specimen/Blaka"

  font "Blaka-Regular.ttf"

  # No zap stanza required
end
