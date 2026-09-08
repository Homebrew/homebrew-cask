cask "font-birthstone" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/birthstone/Birthstone-Regular.ttf"
  name "Birthstone"
  homepage "https://fonts.google.com/specimen/Birthstone"

  font "Birthstone-Regular.ttf"

  # No zap stanza required
end
