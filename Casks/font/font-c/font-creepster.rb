cask "font-creepster" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/creepster/Creepster-Regular.ttf"
  name "Creepster"
  homepage "https://fonts.google.com/specimen/Creepster"

  font "Creepster-Regular.ttf"

  # No zap stanza required
end
