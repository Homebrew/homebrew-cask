cask 'qlab' do
  version '4.5'
  sha256 '3e5a7fc27992ee050f885eb1092f226ef0797fe418f17a4a5efe82debc280a33'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
