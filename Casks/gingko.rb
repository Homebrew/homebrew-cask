cask 'gingko' do
  version '2.2.0'
  sha256 '607ad02b3b9c81fcd1733a73005623a0816d0a8d081ca3f1aca5146f88400a84'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
