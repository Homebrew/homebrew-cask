cask 'qlab' do
  version '4.6.1'
  sha256 'a66a7f3c7142dbd35047ffb73e685f748d965349ef4f42c6fce85c71ef7b2c94'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
