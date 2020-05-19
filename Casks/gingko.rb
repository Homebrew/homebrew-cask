cask 'gingko' do
  version '2.4.10'
  sha256 'a8a519136889be3b28f87db723cc2f0db8d3d3ff25e7b3c5ab86d608e0dc8d84'

  # github.com/gingko/client/ was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
