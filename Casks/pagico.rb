cask 'pagico' do
  version '9.0.3060'
  sha256 '5720a15304ad2bac302330ad63501c4e83674c6dee4cab1956deb03018043c91'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
