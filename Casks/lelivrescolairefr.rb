cask "lelivrescolairefr" do
  version "2.1.2"
  sha256 :no_check

  # ci.lls.fr/build/latest/mac/ was verified as official when first introduced to the cask
  url "https://ci.lls.fr/build/latest/mac/Lelivrescolaire.fr.dmg"
  name "Lelivrescolaire.fr"
  homepage "https://www.lelivrescolaire.fr/"

  app "Lelivrescolaire.fr.app"
end
