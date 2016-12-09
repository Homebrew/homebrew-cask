cask 'macvim' do
  version '8.0.119'
  sha256 'cb94f33aa0c2ce4990a2c9e24d2775887ba6d91e1fb78059c6f0d3d1922ba5f7'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '6cdfad69fd19df6a25fc577ea624bc2b68c16b98c29dd7b7e1cc17c61d369462'
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
