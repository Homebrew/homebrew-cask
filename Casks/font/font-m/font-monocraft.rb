cask "font-monocraft" do
  version "3.0"
  sha256 "b61ee3256f449e96140f54515819540840ef0cade82711eba359a5864c779076"

  url "https://github.com/IdreesInc/Monocraft/releases/download/v#{version}/Monocraft.ttf"
  name "Monocraft"
  homepage "https://github.com/IdreesInc/Monocraft"

  font "Monocraft.ttf"

  # No zap stanza required
end
