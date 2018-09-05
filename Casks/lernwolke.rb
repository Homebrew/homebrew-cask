cask 'lernwolke' do
  version '1.0.0'
  sha256 'db0563834158e0c185ca9f79981ff3803d98b01f983cfe0e55af5ac3702ddeea'

  url "https://download.lernwolke.ch/mac_os/Lernwolke_#{version}.dmg.zip"
  name 'Lernwolke'
  homepage 'https://www.lernwolke.ch/'

  app 'Lernwolke.app'
end
