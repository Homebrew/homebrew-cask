cask "font-germania-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/germaniaone/GermaniaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Germania One"
  homepage "https://fonts.google.com/specimen/Germania+One"

  font "GermaniaOne-Regular.ttf"

  # No zap stanza required
end
