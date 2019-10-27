cask 'macvim' do
  version '8.1.2168,159'
  sha256 '2f9e9c66c7d6f76dfb88c0291a47963201e498fab40814d6702eb0c12f9007c8'

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
