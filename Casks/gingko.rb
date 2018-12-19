cask 'gingko' do
  version '2.2.4'
  sha256 '9a74f91a4076fa9824083f1159af3f11891bb0a1b178f1785b4b11e392aab4a3'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
