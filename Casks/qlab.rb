cask 'qlab' do
  version '3.1.22'
  sha256 '971e0d1b420168edd010fa235ff64f042bd482938dd5a3a6c512fc3aab340bc2'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}.php",
          checkpoint: 'f5a48cafbcf623938901bb7e4adb43679557c252353992d66b54b884ca0bee6b'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'
  license :commercial

  app 'QLab.app'
end
