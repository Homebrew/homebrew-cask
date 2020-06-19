cask 'qlab' do
  version '4.6.5'
  sha256 '16847f01f8fc749374a3c26d206898b3e7241d3fe47da5adc091ac0620868420'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
