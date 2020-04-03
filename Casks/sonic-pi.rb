cask 'sonic-pi' do
  version '3.2.1'
  sha256 '17e32ea392b3f324022bbdab8ecdb7d7f159b06e922ca65cf26ed41090c349cd'

  url "https://sonic-pi.net/files/releases/v#{version}/sonic-pi-for-mac-v#{version}.zip"
  appcast 'https://github.com/samaaron/sonic-pi/releases.atom'
  name 'Sonic Pi'
  homepage 'https://sonic-pi.net/'

  app 'Sonic Pi.app'
end
