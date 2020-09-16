cask "pinta" do
  version "1.7"
  sha256 "eab26f25f78f906127a4b12991d39483f96f43ded1a75837aad5b539f27abb0c"

  # github.com/PintaProject/Pinta/ was verified as official when first introduced to the cask
  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta.app.zip"
  appcast "https://github.com/PintaProject/Pinta/releases.atom"
  name "Pinta"
  desc "Simple Gtk# Paint Program"
  homepage "https://www.pinta-project.com/"

  depends_on cask: "mono-mdk"

  app "Pinta.app"
end
