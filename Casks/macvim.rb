cask 'macvim' do
  version '8.2.539,163'
  sha256 '5ab07a704909b52fa2b28ffa69b06389447d8a013242354bae6c185b6df1da37'

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
