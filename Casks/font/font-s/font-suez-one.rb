cask "font-suez-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/suezone/SuezOne-Regular.ttf"
  name "Suez One"
  homepage "https://fonts.google.com/specimen/Suez+One"

  font "SuezOne-Regular.ttf"

  # No zap stanza required
end
