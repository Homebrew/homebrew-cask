cask 'spotifree' do
  version '1.6.5'
  sha256 'f518a09187bbf1c033e007fbfbd900222d17c7efd103ef239e61bfdec7caaaec'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/ArtemGordinsky/Spotifree/releases/download/#{version}/Spotifree.dmg"
  appcast 'http://spotifree.gordinskiy.com/appcast.xml',
          :sha256 => 'fdbbed5f9245062d5045d556b9670ca31dde276df369d8303a65ab15d65e09a4'
  name 'Spotifree'
  homepage 'http://spotifree.gordinskiy.com'
  license :oss

  app 'Spotifree.app'
end
