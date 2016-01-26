cask 'splashtop-personal' do
  version '2.6.2.1'
  sha256 '9b0733ece58b9e36b5d4f566bbcf80e0e207ba751f0a0b188807738ba79cbbed'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STP/Splashtop_Personal_v#{version}.dmg"
  name 'Splashtop Personal'
  homepage 'http://www.splashtop.com/personal'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Splashtop Personal.pkg'

  uninstall pkgutil: 'com.splashtop.stp.*'
end
