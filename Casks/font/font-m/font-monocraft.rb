cask "font-monocraft" do
  version "4.2"
  sha256 "3a03c49166d9fedc5adf142679310b37cfc716bc90d8a916b9275d88e81eadf5"

  url "https://github.com/IdreesInc/Monocraft/releases/download/v#{version}/Monocraft.ttc"
  name "Monocraft"
  homepage "https://github.com/IdreesInc/Monocraft"

  font "Monocraft.ttc"

  # No zap stanza required
end
