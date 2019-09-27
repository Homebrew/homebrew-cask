cask 'qlab' do
  version '4.5.2'
  sha256 '53a388c97b16f45490a0e923cfe76baad7563f49f21f8e0fd802d2cebb5ac0b4'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/"
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
