cask 'macvim' do
  version '8.0.111'
  sha256 'e91ad178c963df6f8ced8b61033a47aef290986fcf7b0e79e7b83b5aa7e5491c'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'e4228aab58218059de7c0bf8ea6006ee4f936291bf482b3fe204d4a9d3061b40'
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
