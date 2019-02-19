cask 'qlab' do
  version '4.4.2'
  sha256 '4143487cba01560bdb324cba342c42ac4e3571d1a7a698bbd75f0ee7a4752b5e'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
