cask "font-creepster-caps" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/creepstercaps/CreepsterCaps-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Creepster Caps"
  homepage "https://fonts.google.com/specimen/Creepster+Caps"

  font "CreepsterCaps-Regular.ttf"

  # No zap stanza required
end
