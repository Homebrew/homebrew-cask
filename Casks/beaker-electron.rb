cask 'beaker-electron' do
  version '1.7.1-0-g6dac09a'
  sha256 '09e40afd62ccc4541d37976c1846a0e4c242d0e0446544c3b59347b8156f4d8d'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-electron-mac.dmg"
  appcast 'https://github.com/twosigma/beakerx/releases.atom',
          checkpoint: '31c52c046703cf1719ff51b52b7f886834f46f7dfb17b3ee648c66786e978263'
  name 'Beaker Electron'
  homepage 'http://beakernotebook.com/'

  app 'Beaker.app'
end
