cask "font-dekko" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dekko/Dekko-Regular.ttf"
  name "Dekko"
  homepage "https://fonts.google.com/specimen/Dekko"

  font "Dekko-Regular.ttf"

  # No zap stanza required
end
