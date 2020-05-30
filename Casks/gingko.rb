cask 'gingko' do
  version '2.4.14'
  sha256 'a37bb0be8116fabe0e6aa32329353a29f2ed3aa814ddc6ec8c82bdb7164fba45'

  # github.com/gingko/client/ was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
