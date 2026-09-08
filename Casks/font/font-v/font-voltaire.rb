cask "font-voltaire" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/voltaire/Voltaire-Regular.ttf"
  name "Voltaire"
  homepage "https://fonts.google.com/specimen/Voltaire"

  font "Voltaire-Regular.ttf"

  # No zap stanza required
end
