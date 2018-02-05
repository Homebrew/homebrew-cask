cask 'electron' do
  version '1.7.12'
  sha256 'c6d67ed023c5187fb3f8881d3f7ccfbc3bff1edea8098edb5b5e8efe0b4926dc'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: 'bd0415f32b21553786cc3781e4d30cc627a2688e6e7380c353c26ee376b93ea7'
  name 'Electron'
  homepage 'https://electron.atom.io/'

  app 'Electron.app'

  zap trash: [
               '~/Library/Application Support/Electron',
               '~/Library/Caches/Electron',
               '~/Library/Preferences/com.github.electron.helper.plist',
               '~/Library/Preferences/com.github.electron.plist',
             ]
end
