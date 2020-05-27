cask 'gingko' do
  version '2.4.13'
  sha256 '46fb75be0b6b4cc1b6d8de657ded195996e181cd4063df25634be5399ff6b9a3'

  # github.com/gingko/client/ was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
