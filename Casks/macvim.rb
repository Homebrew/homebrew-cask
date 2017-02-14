cask 'macvim' do
  version '8.0.126'
  sha256 'd53805d90cedc08430f1b264e80adc20180a1c6927f35cd923bd3dc9173206f4'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'bdeaf8edfd578ea905bd7c42626ae2668d4678268ac7dccfe1709f4cb0a44ff5'
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
