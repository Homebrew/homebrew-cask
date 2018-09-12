cask 'qlab' do
  version '4.3.1'
  sha256 'dc4b6a00e14e7fbaea1c2202646742bb832df75bacaeb49353f361fabb1e1464'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
