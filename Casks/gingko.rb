cask 'gingko' do
  version '2.3.2'
  sha256 '36d9e2c1190b663e71bbfba6fb834aa6a1abd01f313799065c23c6513e5e3500'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
