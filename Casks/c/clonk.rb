cask "clonk" do
  version "1.0"
  sha256 :no_check

  url "http://www.clonkx.de/rage/cr_full_mac.zip",
      verified: "clonkx.de/rage/"
  name "Clonk Rage"
  desc "Single player and multiplayer action game"
  homepage "http://www.clonk.de/cr.php"

  disable! date: "2024-07-05", because: "is 32-bit only"

  app "Clonk.app"
end
