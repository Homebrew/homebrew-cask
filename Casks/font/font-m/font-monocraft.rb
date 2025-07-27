cask "font-monocraft" do
  version "4.1"
  sha256 "09eb83095442e8068ec843f15ccb35717fa783616f0a6079605c4c4522920381"

  url "https://github.com/IdreesInc/Monocraft/releases/download/v#{version}/Monocraft.ttc"
  name "Monocraft"
  homepage "https://github.com/IdreesInc/Monocraft"

  font "Monocraft.ttc"

  # No zap stanza required
end
