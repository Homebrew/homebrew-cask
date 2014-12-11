cask :v1 => 'maxthon' do
  version '4.1.3.5000'
  sha256 '326a0c7076ff1d06474b217691ba5597343325158ddecd7fa17da53d8903f65d'

  url "https://dl.maxthon.com/mac/Maxthon-#{version}.dmg"
  homepage 'http://www.maxthon.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Maxthon.app'
end
