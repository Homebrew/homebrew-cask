cask 'sabaki' do
  version '0.41.0'
  sha256 '74aea7370c75dd2d34436cbd962ddf9c91094a3703a99037b0d0e2511a829ff8'

  # github.com/SabakiHQ/Sabaki was verified as official when first introduced to the cask
  url "https://github.com/SabakiHQ/Sabaki/releases/download/v#{version}/sabaki-v#{version}-mac-x64.7z"
  appcast 'https://github.com/SabakiHQ/Sabaki/releases.atom'
  name 'Sabaki'
  homepage 'https://sabaki.yichuanshen.de/'

  app 'Sabaki.app'
end
