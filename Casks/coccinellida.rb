cask 'coccinellida' do
  version '0.7'
  sha256 '9eb8376fa3764e406433aff969fb5aa9f8ba78886948d013ea690cf979baaf88'

  url "http://downloads.sourceforge.net/project/coccinellida/Coccinellida-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/troydm/coccinellida/master/sparkle.xml',
          :checkpoint => 'fd8ab328cb4792b47f6d280417bd58e037263b59e8cafbcf6b9b04c8d165c954'
  name 'Coccinellida'
  homepage 'http://coccinellida.sourceforge.net/'
  license :gpl

  app 'Coccinellida.app'
end
