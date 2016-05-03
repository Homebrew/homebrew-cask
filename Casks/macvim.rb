cask 'macvim' do
  version '7.4.102'
  sha256 'b4a32d1404fc1209aaff4ee11aed00bb7e3a4518cd7d3669a03a6edb2aa63b75'

  url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.patch}/MacVim.dmg"
  appcast 'https://github.com/macvim-dev/macvim/releases.atom',
          checkpoint: '26f570c5620a93e81cdf2fa94b52c280170a42d55b9db35b191135fdbeaa23f4'
  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'
  license :oss

  conflicts_with formula: 'macvim'

  app 'MacVim.app'
  binary 'mvim'

  zap delete: [
                '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                '~/Library/Preferences/org.vim.MacVim.plist',
              ]
end
