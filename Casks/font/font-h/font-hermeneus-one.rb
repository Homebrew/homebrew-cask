cask "font-hermeneus-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hermeneusone/HermeneusOne-Regular.ttf"
  name "Hermeneus One"
  homepage "https://fonts.google.com/specimen/Hermeneus+One"

  font "HermeneusOne-Regular.ttf"

  # No zap stanza required
end
