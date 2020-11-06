cask "morpheus" do
  version "2.1.0.b190630"
  sha256 "cdc48fa8444d00cdb896735d70512931935e059abd6e38e48a0af782dca78cdb"

  # imc.zih.tu-dresden.de/morpheus/packages/mac/ was verified as official when first introduced to the cask
  url "https://imc.zih.tu-dresden.de/morpheus/packages/mac/Morpheus_#{version}.dmg"
  appcast "https://morpheus.gitlab.io/download/"
  name "Morpheus"
  homepage "https://morpheus.gitlab.io/"

  app "Morpheus.app"

  zap trash: [
    "~/Library/Application Support/Morpheus",
    "~/Library/Preferences/org.morpheus.Morpheus.plist",
  ]
end
