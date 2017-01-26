cask 'macvim' do
  version '8.0.124'
  sha256 '25323dfab0548a09e4b33eb99703a1101f1b53a78911f15e95289cc00d236d1c'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '5bc5bca9f1b750d0d86aec1d1645f1cd85904cb535a1d9068ff31abf40f897bb'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'

  conflicts_with formula: 'macvim'
  depends_on macos: '>= :mountain_lion'

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
