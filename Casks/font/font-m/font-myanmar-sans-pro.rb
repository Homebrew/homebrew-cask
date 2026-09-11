cask "font-myanmar-sans-pro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/myanmarsanspro/MyanmarSansPro-Regular.ttf"
  name "Myanmar Sans Pro"
  homepage "https://fonts.google.com/earlyaccess"

  font "MyanmarSansPro-Regular.ttf"

  # No zap stanza required
end
