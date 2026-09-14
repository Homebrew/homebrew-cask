cask "font-monoton" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/monoton/Monoton-Regular.ttf"
  name "Monoton"
  homepage "https://fonts.google.com/specimen/Monoton"

  font "Monoton-Regular.ttf"

  # No zap stanza required
end
