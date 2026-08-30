cask "font-courgette" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/courgette/Courgette-Regular.ttf"
  name "Courgette"
  homepage "https://fonts.google.com/specimen/Courgette"

  font "Courgette-Regular.ttf"

  # No zap stanza required
end
