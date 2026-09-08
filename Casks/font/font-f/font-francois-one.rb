cask "font-francois-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/francoisone/FrancoisOne-Regular.ttf"
  name "Francois One"
  homepage "https://fonts.google.com/specimen/Francois+One"

  font "FrancoisOne-Regular.ttf"

  # No zap stanza required
end
