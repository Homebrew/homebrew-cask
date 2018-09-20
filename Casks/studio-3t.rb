cask 'studio-3t' do
  version '2018.4.3'
  sha256 '5a71cacc09bdde4d0dc1dbb631815488058690da068eb4aa49e4096f35861e05'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
