cask :v1 => 'fritzing' do
  version '0.9.1b'
  sha256 '907d7ad09b815f66b666407c932bc8c38e1582a0362fb1daf0d243f944cd2351'

  url "http://fritzing.org/download/#{version}/mac-os-x-105/Fritzing-#{version}_1.dmg"
  homepage 'http://fritzing.org/'
  license :gpl

  app 'Fritzing.app'
end
