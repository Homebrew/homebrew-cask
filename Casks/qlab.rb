cask 'qlab' do
  version '4.3'
  sha256 '4e801498e63a9ad1137c3f3e549f0c1d450bd5f20ceaae9d597d8461628a0327'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
