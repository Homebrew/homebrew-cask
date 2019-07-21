cask 'qlab' do
  version '4.4.5'
  sha256 'eab8f96f0e95c46f61555fa76e332cf35952c5f4959aad86552a28c671985410'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
