cask "lelivrescolairefr" do
  version "2.1.3"
  sha256 :no_check

  url "https://ci.lls.fr/build/latest/mac/Lelivrescolaire.fr.dmg",
      verified: "ci.lls.fr/build/latest/mac/"
  name "Lelivrescolaire.fr"
  homepage "https://www.lelivrescolaire.fr/"

  app "Lelivrescolaire.fr.app"
end
