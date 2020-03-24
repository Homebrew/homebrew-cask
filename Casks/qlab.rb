cask 'qlab' do
  version '4.6.3'
  sha256 'b275d062dfa0b3511cd6fceedd751384f2a4062876d53e9ff876f56dc897d607'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
