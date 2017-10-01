cask 'qtox' do
  version '1.12.0'
  sha256 '94e1e3de7a2aef703405b0abc4ce151740ab0b1806e28f9fc21ba7291ff88c86'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom',
          checkpoint: 'fd55e7e69da1a0b43d2270170719538a61a61d175b67721ccab04effa93fe13d'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
