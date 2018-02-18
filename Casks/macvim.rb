cask 'macvim' do
  version '8.0.145'
  sha256 '4182cbf0cd6158f4515d3a7af96140d6069e01542e9250410cbeb66452779460'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: 'a2011f44bc946d193b9195a1ba8a030bd53c08f9cfdcb44a1f7eb297023183b5'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'

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
