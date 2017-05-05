cask 'macvim' do
  version '8.0.132'
  sha256 '180eca83c1b1145ec250d94906d021d5568d6c7ac66d075b5c77ed909f5e85a2'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '44b75e8e838df60ef9f524ae4594f330c9a38ed84d007d05b8e270a0c0c15f47'
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
