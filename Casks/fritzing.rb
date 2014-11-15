cask :v1 => 'fritzing' do
  version '0.9.0b'
  sha256 '853194e16cc66aa4fd8235d651f649e25eabbaed7bd95b4ee0d438d2e4f8ab6b'

  url "http://fritzing.org/download/#{version}/mac-os-x-105/Fritzing#{version}.dmg"
  homepage 'http://fritzing.org/'
  license :gpl

  app 'Fritzing.app'
end
