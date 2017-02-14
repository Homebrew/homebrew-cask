cask 'maltego-chlorine-ce' do
  version '3.6.0.6640'
  sha256 '88bf739458868707da9ff5aad4761f38b998fe11163d643794e5533e8b6a6c3c'

  url "https://www.paterva.com/malv#{version.major}#{version.minor}/community/MaltegoCE.v#{version}.dmg"
  name 'Paterva Maltego'
  homepage 'https://www.paterva.com/web7/buy/maltego-clients/maltego-ce.php'

  app "Maltego Chlorine CE v#{version.major_minor_patch}.app"
end
