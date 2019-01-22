cask 'qlab' do
  version '4.4.1'
  sha256 '52fb818786e263b221e6079c1ff97121911647df97a249bd9f6860e92b156684'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
