cask 'macvim' do
  version '8.0.129'
  sha256 'a75d4999986f65b12b5adecde9dbdcf30ae04a19545a65b0131783c547897cf2'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'b94f207852bed3a9ece4d15be8163ed9a9b6abd18a751e0ae02123f42bb8b8c2'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'

  conflicts_with formula: 'macvim'
  depends_on macos: '>= :mountain_lion'

  app 'MacVim.app'
  binary "#{appdir}/MacVim.app/Contents/MacOS/MacVim"
  binary "#{appdir}/MacVim.app/Contents/MacOS/macvim-askpass"
  binary "#{appdir}/MacVim.app/Contents/MacOS/mvim"
  binary "#{appdir}/MacVim.app/Contents/MacOS/Vim"

  zap delete: [
                '~/Library/Caches/org.vim.MacVim',
                '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                '~/Library/Preferences/org.vim.MacVim.plist',
              ]
end
