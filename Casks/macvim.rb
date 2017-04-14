cask 'macvim' do
  version '8.0.130'
  sha256 'fd70339c60ca2cb8b8729f2cbb618812f232bb4987e7f17079cbfb2e5eb0cea9'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'a9a6c47c52a67d06d0fc2c805c1065289e9c07d95c1e1e9718471d75caa012e3'
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
