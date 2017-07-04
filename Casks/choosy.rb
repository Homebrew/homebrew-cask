cask 'choosy' do
  if MacOS.version <= :el_capitan
    version '1.1'
    sha256 'c6530d4e0dddbf47c6a8999bda8f3a5ef1857f4481b9325e56cfe00f05b2022c'
  else
    version '1.2.2'
    sha256 'a6d2ee7c3e9e0ab9b6170305877e17bd070a3d3eb589643bee7e361d9dd68f23'
  end

  url "https://downloads.choosyosx.com/choosy_#{version}.zip"
  appcast 'https://www.choosyosx.com/sparkle/feed',
          checkpoint: '93b9ecf77d1bb96cd4db63ced49152e9053bf380c2c616b736da2941937b40fa'
  name 'Choosy'
  homepage 'https://www.choosyosx.com/'

  depends_on macos: '>= :yosemite'

  prefpane 'Choosy.prefPane'
end
