cask 'macvim' do
  version '8.0.112'
  sha256 'bbc4548db12d8b5b97e50737543c776dbef2ad170aa1a6eea91155b3ac9bb09f'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'f2634e8d24d6f52a823d53e1a69bc5cd5981cd9f15c8437b3304f796b8f2d41d'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'

  conflicts_with formula: 'macvim'

  app 'MacVim.app'

  %w[
    gview
    gvim
    gvimdiff
    gvimex
    mview
    mvim
    mvimdiff
    mvimex
  ].each do |link_name|
    binary 'mvim', target: link_name
  end

  zap delete: [
                '~/Library/Caches/org.vim.MacVim',
                '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                '~/Library/Preferences/org.vim.MacVim.plist',
              ]
end
