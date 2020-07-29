cask 'qlab' do
  version '4.6.4'
  sha256 'ada01657fec89b9b350949270770a96b00d0fdfea9d4c5601096cdfda9ebc064'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
