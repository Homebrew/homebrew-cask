cask 'macvim' do
  version '8.0.127'
  sha256 '95ac1e407bf64902be1905239e7269394d58e5c0b7765d73a6b49547b97b19f4'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '3b1212138bd21f5ce427abc371d728281e649d43742381b814463e9e680bfba7'
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
