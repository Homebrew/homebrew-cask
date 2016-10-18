cask 'deco' do
  version '0.7.1'
  sha256 '94eda7876e3d33ecc8097c363c97876ed6a1b56e692849d8bfe5b3cfb132e86d'

  # github.com/decosoftware/deco-ide was verified as official when first introduced to the cask
  url "https://github.com/decosoftware/deco-ide/releases/download/v#{version}/Deco-#{version}-osx.zip"
  appcast 'https://github.com/decosoftware/deco-ide/releases.atom',
          checkpoint: 'c36536d79d0aefcaad1b366d4283387828b4ba1f30d418b8dc5a4888be60efe0'
  name 'Deco'
  homepage 'https://www.decosoftware.com'

  app 'Deco.app'

  zap delete: [
                '~/.Deco',
                '~/Library/Application Support/com.decosoftware.Deco',
              ]
end
