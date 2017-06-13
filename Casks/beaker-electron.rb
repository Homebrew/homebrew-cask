cask 'beaker-electron' do
  version '1.7.1-0-g6dac09a'
  sha256 '09e40afd62ccc4541d37976c1846a0e4c242d0e0446544c3b59347b8156f4d8d'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-electron-mac.dmg"
  appcast 'https://github.com/twosigma/beakerx/releases.atom',
          checkpoint: '10cad9f1d4b6deb342ef06b3760c315c3f6f4a7f5234760479234b68dc07c80e'
  name 'Beaker Electron'
  homepage 'http://beakernotebook.com/'

  app 'Beaker.app'
end
