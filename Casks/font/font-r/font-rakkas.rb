cask "font-rakkas" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rakkas/Rakkas-Regular.ttf"
  name "Rakkas"
  homepage "https://fonts.google.com/specimen/Rakkas"

  font "Rakkas-Regular.ttf"

  # No zap stanza required
end
