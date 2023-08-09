cask "pokemon-reborn" do
  version "19.12"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.rebornevo.com/downloads/Reborn#{version.major}-Mac.zip"
  name "Pokemon Reborn"
  desc "Third-party Pokemon game"
  homepage "https://www.rebornevo.com/"

  livecheck do
    url "https://www.rebornevo.com/pr/download/"
    regex(/Updated to v?(\d+(?:\.\d+)+)["< ]/i)
  end

  app "Pokemon Reborn/Pokémon Reborn.app"
end
