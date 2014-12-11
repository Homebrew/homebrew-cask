cask :v1 => 'sonic-pi' do
  version :latest
  sha256 :no_check

  url 'http://sonic-pi.net/files/sonic-pi-mac-latest.dmg'
  homepage 'http://sonic-pi.net/'
  license :unknown    # todo: improve this machine-generated value

  app 'Sonic Pi.app'
end
