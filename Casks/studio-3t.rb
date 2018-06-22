cask 'studio-3t' do
  version '2018.3.2'
  sha256 '9854e2ec74687a131fe7392dd9a4c0c4256d5ea5ffb4dc2370965dd211f08957'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
