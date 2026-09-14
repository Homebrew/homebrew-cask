cask "font-inder" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/inder/Inder-Regular.ttf"
  name "Inder"
  homepage "https://fonts.google.com/specimen/Inder"

  font "Inder-Regular.ttf"

  # No zap stanza required
end
