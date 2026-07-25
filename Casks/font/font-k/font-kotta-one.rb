cask "font-kotta-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kottaone/KottaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kotta One"
  homepage "https://fonts.google.com/specimen/Kotta+One"

  font "KottaOne-Regular.ttf"

  # No zap stanza required
end
