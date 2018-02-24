cask 'netron' do
  version '1.5.4'
  sha256 'c62dc11e770ffb10d70cabb2d3e9754d9a64fb18dfcb4f3035dfcb7350fd5ae2'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '5035c32898c6b6a21dc864477bf5a8682931d59e90589161d763f9dcfa013b05'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
