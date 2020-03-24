cask 'sonic-pi' do
  version '3.2.0'
  sha256 '7a3e8b29c30dd83cfa081cff86983f0a28269553b18636b6784a40601bb9497e'

  url "https://sonic-pi.net/files/releases/v#{version}/sonic-pi-for-mac-v#{version}.zip"
  appcast 'https://github.com/samaaron/sonic-pi/releases.atom'
  name 'Sonic Pi'
  homepage 'https://sonic-pi.net/'

  app 'Sonic Pi.app'
end
