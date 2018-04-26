cask 'electron' do
  version '1.8.5'
  sha256 'ffcfe332568f255f72d96470d24bdd99f2b274a68866dac8bd09045f73cce538'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '04bbbb59bf2a80dd068b7259ac0df61924cdfb6fa65197070d3b9894a452fbbe'
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
