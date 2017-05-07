cask 'beaker-electron' do
  version '1.7.1-0-g6dac09a'
  sha256 '09e40afd62ccc4541d37976c1846a0e4c242d0e0446544c3b59347b8156f4d8d'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-electron-mac.dmg"
  appcast 'https://github.com/twosigma/beakerx/releases.atom',
          checkpoint: 'a66b88ef479e3a664e0591c30517386bc4d5e4e14a4b0294be303f6595189072'
  name 'Beaker Electron'
  homepage 'http://beakernotebook.com/'

  app 'Beaker.app'
end
