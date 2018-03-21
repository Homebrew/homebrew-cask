cask 'qlab' do
  version '4.1.7'
  sha256 '4643b082176a4bdab5a8b033d7f8ae5c2ec86c0e4d484182b44e9796cd032a04'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/",
          checkpoint: '8869a88e2a11b33664dea11d8caa99a3523c92f39257ecb8ab8ee519ed66c151'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
