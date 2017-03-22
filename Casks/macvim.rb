cask 'macvim' do
  version '8.0.128'
  sha256 'e3763cf5978850eb85c8c333fc2b064c6ef1615c2d9f89445d4b385ca7fa916d'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '7f624738f4adf4fb2a6c19fe6d04dfb5577805140f05df0a9e512df8d2fdce73'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'

  conflicts_with formula: 'macvim'
  depends_on macos: '>= :mountain_lion'

  app 'MacVim.app'
  binary 'mvim'

  zap delete: [
                '~/Library/Caches/org.vim.MacVim',
                '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                '~/Library/Preferences/org.vim.MacVim.plist',
              ]
end
