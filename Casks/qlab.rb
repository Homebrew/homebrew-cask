cask 'qlab' do
  version '4.2.4'
  sha256 '957773e7d502511b5c946b6e353958b092420ad914b193a224e8a7901dc51fcd'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/",
          checkpoint: 'd99cbf3a3b75ea958e04f0163c2761eeec234a019cf088b8f23f67ca31f410d1'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
