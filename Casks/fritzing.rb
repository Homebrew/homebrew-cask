cask 'fritzing' do
  version '0.9.2b'
  sha256 'ad0a23897a761b1342cf1aaae2806109824fbc37d95567aab836877363385fdd'

  url "http://fritzing.org/download/#{version}/mac-os-x-105/Fritzing#{version}.dmg"
  name 'Fritzing'
  homepage 'http://fritzing.org/'
  license :gpl

  app 'Fritzing.app'
end
