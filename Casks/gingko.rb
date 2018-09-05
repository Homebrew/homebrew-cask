cask 'gingko' do
  version '2.2.1'
  sha256 '1c841444ed96a7fd5301ac1fe57f56618bbad26c02fe11c5884bbd5325ca1614'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
