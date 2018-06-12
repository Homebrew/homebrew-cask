cask 'qlab' do
  version '4.2.4'
  sha256 '957773e7d502511b5c946b6e353958b092420ad914b193a224e8a7901dc51fcd'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
