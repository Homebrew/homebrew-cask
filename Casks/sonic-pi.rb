cask :v1 => 'sonic-pi' do
  version :latest
  sha256 :no_check

  url 'http://sonic-pi.net/app/sonic-pi-mac.dmg'
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'
  license :mit

  app 'Sonic Pi.app'
end
