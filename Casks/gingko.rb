cask 'gingko' do
  version '2.4.1'
  sha256 'f68e14a5fcf2a6bc676c4b8c91a95d9a32ec1ce83a7ac5ce20dc483f7ae58c36'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
