cask "font-rye" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rye/Rye-Regular.ttf"
  name "Rye"
  homepage "https://fonts.google.com/specimen/Rye"

  font "Rye-Regular.ttf"

  # No zap stanza required
end
