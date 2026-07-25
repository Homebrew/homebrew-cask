cask "font-donegal-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/donegalone/DonegalOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Donegal One"
  homepage "https://fonts.google.com/specimen/Donegal+One"

  font "DonegalOne-Regular.ttf"

  # No zap stanza required
end
