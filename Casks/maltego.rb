cask 'maltego' do
  version '3.6.0.6526'
  sha256 'cda838e27afd3c73dd33705f0448f7e63918a3e65df0274928a9c87fe3340d00'

  url "https://www.paterva.com/malv#{version.sub(%r{^(\d+)\.(\d+)\..*}, '\1\2')}/commercial/Maltego.v#{version}.dmg"
  name 'Paterva Maltego'
  homepage 'https://www.paterva.com/web6/products/maltego.php'
  license :closed

  app "Maltego Chlorine v#{version.sub(%r{\.\d+$}, '')}.app"
end
