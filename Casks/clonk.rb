cask "clonk" do
  version "1.0"
  sha256 :no_check

  url "http://www.clonkx.de/rage/cr_full_mac.zip",
      verified: "clonkx.de/"
  name "Clonk Rage"
  homepage "http://www.clonk.de/cr.php"

  app "Clonk.app"
end
