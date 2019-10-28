cask 'macvim' do
  version '8.1.2224,160'
  sha256 'a9405b7cc8f1199772dd8ec25b096520818572f293fa6d9cbf2a0af1eadc14a2'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.after_comma}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'

  auto_updates true
  conflicts_with formula: 'macvim'

  app 'MacVim.app'

  [
    'gview',
    'gvim',
    'gvimdiff',
    'mview',
    'mvim',
    'mvimdiff',
    'view',
    'vim',
    'vimdiff',
  ].each { |link_name| binary "#{appdir}/MacVim.app/Contents/bin/mvim", target: link_name }

  zap trash: [
               '~/Library/Caches/org.vim.MacVim',
               '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
               '~/Library/Preferences/org.vim.MacVim.plist',
             ]
end
