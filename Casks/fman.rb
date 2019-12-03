cask 'fman' do
  version '1.6.7'
  sha256 '863b72e5938fdf67302d6bde6ae93803263f211ae7f5dc2b5ad9ed4c64daf88e'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
