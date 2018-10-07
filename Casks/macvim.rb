cask 'macvim' do
  version '8.1.151'
  sha256 '67aed665cb098e0e9c0fc3a4f99af6d4b4fda58531e6e46c6c9b0ffbed5faad2'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'

  auto_updates true
  conflicts_with formula: 'macvim'
  depends_on macos: '>= :mountain_lion'

  app 'MacVim.app'

  [
    'gview',
    'gvim',
    'gvimdiff',
    'mview',
    'mvim',
    'mvimdiff',
  ].each { |link_name| binary "#{appdir}/MacVim.app/Contents/bin/mvim", target: link_name }

  zap trash: [
               '~/Library/Caches/org.vim.MacVim',
               '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
               '~/Library/Preferences/org.vim.MacVim.plist',
             ]
end
