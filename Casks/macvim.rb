cask 'macvim' do
  version '8.0.131'
  sha256 '590c47569c9ac93c1d683d019e19ec0612f0a1651066003d282c14cda46db6e8'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '36dc1d902ae7b2de206a5630278cee0c28c3ba28ab5514d3f54d6c08324e7ec4'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'

  conflicts_with formula: 'macvim'
  depends_on macos: '>= :mountain_lion'

  app 'MacVim.app'

  %w[
    gview
    gvim
    gvimdiff
    mview
    mvim
    mvimdiff
  ].each { |link_name| binary "#{appdir}/MacVim.app/Contents/bin/mvim", target: link_name }

  zap delete: [
                '~/Library/Caches/org.vim.MacVim',
                '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                '~/Library/Preferences/org.vim.MacVim.plist',
              ]
end
