cask "font-goblin-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/goblinone/GoblinOne.ttf"
  name "Goblin One"
  homepage "https://fonts.google.com/specimen/Goblin+One"

  font "GoblinOne.ttf"

  # No zap stanza required
end
