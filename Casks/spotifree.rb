cask 'spotifree' do
  version '1.6.5'
  sha256 'f518a09187bbf1c033e007fbfbd900222d17c7efd103ef239e61bfdec7caaaec'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/ArtemGordinsky/Spotifree/releases/download/#{version}/Spotifree.dmg"
  appcast 'http://spotifree.gordinskiy.com/appcast.xml',
          :checkpoint => '2dba9424732f21e02dd41a69e6088ab6f0e5674800b21e67f3a234a150d1660d'
  name 'Spotifree'
  homepage 'http://spotifree.gordinskiy.com'
  license :oss

  app 'Spotifree.app'
end
