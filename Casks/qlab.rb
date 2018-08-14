cask 'qlab' do
  version '4.2.5'
  sha256 'a9ff60893329997c00f35c3e15c4f339e4b510304f164dc01960a0528df65f72'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
