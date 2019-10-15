cask 'gingko' do
  version '2.4.2'
  sha256 'c8542d6123aad025e70ed26875e2504e7ad607ee06f4086b790602431f78344e'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
