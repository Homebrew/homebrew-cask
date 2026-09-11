cask "font-potta-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pottaone/PottaOne-Regular.ttf"
  name "Potta One"
  homepage "https://fonts.google.com/specimen/Potta+One"

  font "PottaOne-Regular.ttf"

  # No zap stanza required
end
