cask 'gingko' do
  version '2.4.8'
  sha256 'eb245787d2866fa56b91a3bac23d857cc8e55af5d0de393d1757ff8cf89e1bc2'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
