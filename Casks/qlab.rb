cask 'qlab' do
  version '4.5.3'
  sha256 'a43792788a497755d609894bc2974b14654d5429112b34bee0a907927e3c4aad'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
