cask "lelivrescolairefr" do
  version "2.2.0"
  sha256 :no_check

  url "https://ci.lls.fr/build/latest/mac/Lelivrescolaire.fr.dmg",
      verified: "ci.lls.fr/build/latest/mac/"
  name "Lelivrescolaire.fr"
  homepage "https://www.lelivrescolaire.fr/"

  livecheck do
    skip "unversioned URL"
  end

  app "Lelivrescolaire.fr.app"
end
