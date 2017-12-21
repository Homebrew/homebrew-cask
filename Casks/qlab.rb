cask 'qlab' do
  version '4.1.6'
  sha256 '2b44fae326c032102f6e9e82af6feb7d900e79abd7d32b17bdadb663e569f4a9'

  url "https://figure53.com/qlab/downloads/QLab-#{version}.zip"
  appcast "https://figure53.com/qlab/downloads/appcast-v#{version.major}/",
          checkpoint: '3dac24a1b43c192de56da1c500ad00ef8d8f12d8304e3cbd6433a1d85ea09d7f'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'

  auto_updates true

  app 'QLab.app'
end
