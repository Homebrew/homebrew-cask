cask "font-underdog" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/underdog/Underdog-Regular.ttf"
  name "Underdog"
  homepage "https://fonts.google.com/specimen/Underdog"

  font "Underdog-Regular.ttf"

  # No zap stanza required
end
