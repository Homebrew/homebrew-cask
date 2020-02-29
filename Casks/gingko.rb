cask 'gingko' do
  version '2.4.9'
  sha256 'fbdd504224382f3ec615d5fe6c03d18e0e719fb27dc7771f27088dbff98a98c2'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end
