cask 'qlab' do
  version '4.5.1'
  sha256 '96fd80621070e4c84e3609770043fe8e4ea022559821bcbbaea8b607f61ed479'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
