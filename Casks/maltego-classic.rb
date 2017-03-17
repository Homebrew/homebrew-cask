cask 'maltego-classic' do
  version '4.0.16.9722'
  sha256 '5915e6256a0f8a69dd7f8c9eca63f7a3856927d8bbb3d2fab6a3696c55fa7a24'

  url "https://www.paterva.com/malv#{version.major}/classic/Maltego.v#{version}.dmg"
  name 'Paterva Maltego'
  homepage 'https://www.paterva.com/web7/buy/maltego-clients/maltego.php'

  app "Maltego Classic v#{version.major_minor_patch}.app"
end
